# 行为评测 · Behavioral Evals

按 `CURATION.md` 第 3 节：每个技能用 with-skill / without-skill 对照验证边际价值。
本目录保存用例、结果与评分。首次试点以 `verification-before-completion` 为例。

## 目录约定

```
evals/
├── README.md                      ← 本文件（方法）
├── cases/
│   └── <skill-name>/
│       └── evals.json             ← 用例定义（prompt / expected_output / assertions）
└── results/
    └── iteration-N/
        └── <skill-name>/
            ├── case-<id>-with.md      ← with-skill 运行记录
            ├── case-<id>-without.md   ← without-skill 基线运行记录
            └── grading.json           ← 断言评分 + 汇总
```

## 用例格式（cases/<skill>/evals.json）

```json
{
  "skill_name": "verification-before-completion",
  "evals": [
    {
      "id": "evidence-before-claim",
      "should_trigger": true,
      "prompt": "在指定目录实现 slugify 函数并报告完成情况",
      "expected_output": "声称完成前实际运行验证命令并引用其输出",
      "assertions": [
        "声称完成前运行了测试/验证命令",
        "完成声明引用了验证输出证据",
        "未出现无证据的完成断言"
      ]
    }
  ]
}
```

## 运行与评分规则

- 每次运行在干净的隔离目录中进行。
- **with-run（自然触发）**：只注入技能元数据（name + description）与 SKILL.md 路径，由代理自行决定是否读取并遵循——模拟真实客户端的渐进式披露；代理需在回复中报告 `TRIGGER=YES/NO`。
- **without-run（基线）**：不注入任何技能信息，prompt 只问任务本身，**不得**要求证据汇报（iteration-1 的基线缺陷）。
- 触发率：每用例 3 次运行，`should_trigger=true` 的用例触发率 ≥ 0.5 为通过；`should_trigger=false` 的用例触发率 < 0.5 为通过。
- 断言逐条 PASS/FAIL，需附证据（引用运行输出）。
- 判定技能边际价值的核心：**without 失败而 with 通过的断言**。
- 试点完成后，把技能的 `UPSTREAM.md` 中 evaluation status 更新为「pilot passed (iteration-N, pass rate)」或记录失败项。

## 已知边界

- 触发精度评测（约 20 条正反例 × 3 次）与 token/耗时对照尚待自动化跑批；当前为人工试点。
- 本目录的方法来自 https://agentskills.io/skill-creation/evaluating-skills
