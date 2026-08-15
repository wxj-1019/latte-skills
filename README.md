<p align="center">
  <img src="assets/banner.svg" alt="latte-skills — skills, brewed for your AI" width="960">
</p>

<p align="center">
  <em>一杯技能，提神你的 AI 工作流。<br>A shot of skill, brewed for your AI workflow.</em>
</p>

<p align="center">
  <a href="#"><img src="https://img.shields.io/badge/brews-27-%23c98f2c"></a>
  <a href="#"><img src="https://img.shields.io/badge/ZCode%20%C2%B7%20Claude%20Code%20%C2%B7%20Codex-compatible-success"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT%20(self--built)-blue"></a>
  <a href="https://github.com/wxj-1019/latte-skills/commits"><img src="https://img.shields.io/github/last-commit/wxj-1019/latte-skills"></a>
  <a href="https://github.com/wxj-1019/latte-skills"><img src="https://img.shields.io/github/stars/wxj-1019/latte-skills?style=social"></a>
</p>

<p align="center"><b>简体中文</b> · <a href="README.en.md">English</a></p>

---

> <img src="assets/icons/bean.svg" width="16"> **latte-skills** 把优质的设计与工程技能（SKILL.md）当**咖啡豆**来经营——
> **萃取、拼配、按需冲煮**。分类即拼配豆，技能即特调，克隆即开张。
> 一处烘焙，随处装杯。

## 本店特色

| | |
|---|---|
| <img src="assets/icons/bean.svg" width="18"> **单品精选** | 每颗豆都经实测可用，不灌水 |
| <img src="assets/icons/cup.svg" width="18"> **即装即饮** | 复制到技能目录、重启会话即出杯 |
| <img src="assets/icons/shelf.svg" width="18"> **拼配归档** | 按领域分柜（`frontend/` …），无限续杯 |
| <img src="assets/icons/port.svg" width="18"> **多机兼容** | ZCode / Claude Code / Codex / Cursor 通用 SKILL.md |
| <img src="assets/icons/pour.svg" width="18"> **便携冲煮** | 脚本走 `<skill-base-dir>`，不写死本机路径 |

> 浓度图例：`☕` 清饮（聚焦） · `☕☕` 中烘 · `☕☕☕` 特浓（重型/知识量大）

---

## 今日特调 · Signature Menu

7 款上游原味豆，社区公认优质，均已验证出杯：

| 特调 | 浓度 | 风味 | 产地 |
|---|:---:|---|---|
| **frontend-design** | ☕☕ | 定新页视觉方向，反 AI 模板化，刻意配色/字体/布局 | [anthropics/skills](https://github.com/anthropics/skills) |
| **design-taste-frontend** | ☕☕ | 落地页/作品集按 brief+品牌推断方向，改版先审计 | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| **ui-ux-pro-max** | ☕☕☕ | 79 风格 / 192 配色 / 74 字体 / 119 UX 规则，`search.py` 按域萃取 | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| **impeccable** | ☕☕☕ | 23 命令设计审计/打磨/浏览器实时迭代（编译 v4.0.4） | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| **make-interfaces-feel-better** | ☕ | 同心圆角 / 光学对齐 / 点击区 / 微交互细节 | [jakubkrehel/make-interfaces-feel-better](https://github.com/jakubkrehel/make-interfaces-feel-better) |
| **bklit-ui** | ☕ | 14 类图表按 shadcn registry 安装；组合/主题/动画规则含正误示例 | [bklit/bklit-ui](https://github.com/bklit/bklit-ui) |
| **web-design-guidelines** | ☕ | Vercel Web 规范合规审查（运行时拉最新规则） | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |

---

## 萃取一杯 · Quick Brew

```bash
# 1) 取豆
git clone https://github.com/wxj-1019/latte-skills.git

# 2) 萃一杯到你的 AI 工具技能目录（示例：ZCode）
cp -r latte-skills/frontend/frontend-design ~/.zcode/skills/

# 3) 重启会话 → 开喝 ☕
```

**各机型接豆口：**

| 工具 | 安装位置 |
|---|---|
| ZCode | `~/.zcode/skills/<技能名>/` |
| Claude Code | `.claude/skills/<技能名>/` 或 `~/.claude/skills/<技能名>/` |
| Codex CLI | `~/.agents/skills/<技能名>/` |
| Cursor | `~/.cursor/skills/<技能名>/` |

> ⚠️ 装豆时**文件夹名必须等于 `SKILL.md` 里的 `name`**，否则部分机器识别不到。

---

## 完整菜单 · Full Menu

### <img src="assets/icons/screen.svg" width="16"> `frontend/` — 前端设计（13 杯）

> `frontend-skills-hub/` 是选路中心（路由器），不计入杯数。

**店藏拼配**（自烘，已展平到 `frontend/` 顶层；`frontend-skills-hub/` 仅作选路中心）：

| 拼配 | 风味 |
|---|---|
| `frontend-skills-hub` | 选路中心：场景 → 技能路由 + 流水线 + 决策树 |
| `theme-factory` | 10 套开箱即用 CSS 主题 |
| `bencium` | 设计规范约束（Controlled / Innovative） |
| `accesslint` | WCAG 2.2 AA/AAA 无障碍合规 |
| `interface-design` | 设计系统持久化，Token 强制 |
| `gsap-skill` | GSAP 动画体系 |
| `vercel-agent-skills` | React 实践 + 组件模式（工程化质量） |

### <img src="assets/icons/tool.svg" width="16"> `general/` — 通用技能

| 拼配 | 浓度 | 风味 |
|---|:---:|---|
| **readme-makeover** | ☕☕ | 把平庸/模板化的 README 改造成有品牌、有主视觉、可扫读的落地页：挖品牌隐喻 → 动画 SVG 招牌 → 徽章 → 反 AI 味图标系统 → 强结构 → LICENSE/.gitattributes。详见 `general/readme-makeover/`（本 README 即由它出品 ☕） |

### <img src="assets/icons/shield-check.svg" width="16"> `quality/` — 质量与验证（6 杯）

| 拼配 | 浓度 | 风味 |
|---|:---:|---|
| **verification-before-completion** | ☕ | 完成声明前强制出示最新验证证据（obra/superpowers，适配） |
| **systematic-debugging** | ☕☕ | 四阶段根因排查：复现 → 模式分析 → 假设验证 → 修复（obra/superpowers，适配） |
| **test-driven-development** | ☕☕ | Red-Green-Refactor 纪律 + 测试质量指南（obra/superpowers，适配） |
| **performance-optimization** | ☕☕ | 测量 → 单变量 → 复测 → 回退的实证优化闭环（addyosmani，适配） |
| **security-and-hardening** | ☕☕ | 威胁建模 + OWASP 注入/认证/密钥/供应链 + LLM 安全（自烘重写） |
| **code-review-and-quality** | ☕ | 五轴审查 + 统一严重级别 + 反馈接收（自烘重写） |

### <img src="assets/icons/chip.svg" width="16"> `ai-development/` — AI 开发（2 杯）

| 拼配 | 浓度 | 风味 |
|---|:---:|---|
| **mcp-builder** | ☕☕ | MCP 服务器构建：双输出/工具注解/评测方法（Anthropic 原版，Apache-2.0） |
| **claude-api** | ☕☕☕ | Claude/Anthropic API 全语言知识包（按需安装，定期同步上游，Apache-2.0） |

### <img src="assets/icons/target.svg" width="16"> `product/` — 需求与规格（1 杯）

| 拼配 | 浓度 | 风味 |
|---|:---:|---|
| **specification-and-acceptance** | ☕☕ | 编码前先定规格：编号需求 + Given-When-Then 验收 + 需求→测试追踪矩阵（自烘改写） |

### <img src="assets/icons/layers.svg" width="16"> `architecture/` — 架构决策（1 杯）

| 拼配 | 浓度 | 风味 |
|---|:---:|---|
| **architecture-decision-records** | ☕ | 证据优先的 ADR：上下文/决策/后果/备选项与否决理由（自烘改写） |

### <img src="assets/icons/database.svg" width="16"> `backend/` — 后端与数据（3 杯）

| 拼配 | 浓度 | 风味 |
|---|:---:|---|
| **supabase-postgres-best-practices** | ☕☕☕ | Postgres 工程实践：schema/迁移/索引/RLS/锁/连接池/监控（Supabase 官方，MIT，渐进式 35 篇 references） |
| **api-contract-design** | ☕☕ | 契约优先的 HTTP API 设计：错误模型/幂等/分页/版本化/契约测试（自烘） |
| **database-migrations** | ☕☕ | 安全 schema 演进：expand/contract、分批回填、引擎差异速查（自烘） |

<!--
未来拼配柜：### 🛠️ backend/
-->

---

## 怎么点单 · Usage

技能不是按钮，是**给 AI 的风味说明书**。两种点法：

**1. 自然语言（推荐）** — 描述口味，AI 自动配豆：

| 你说 | 出杯 |
|---|---|
| "帮我设计一个有独特风格的落地页" | `frontend-design` / `design-taste-frontend` |
| "查一下企业后台常见的配色和字体" | `ui-ux-pro-max` |
| "这页感觉不对，打磨到专业级" | `impeccable` |
| "按钮/卡片的圆角对齐点击区调舒服" | `make-interfaces-feel-better` |
| "给页面/后台加图表和数据可视化" | `bklit-ui` |
| "完成前自查 / 提交前验证" | `verification-before-completion` |
| "这个 bug 排查了很久没解决" | `systematic-debugging` |
| "写新功能 / 修 bug，要测试覆盖" | `test-driven-development` |
| "检查这 UI 是否符合 Web 规范" | `web-design-guidelines` |

**2. 直点单品**：`/frontend-design`、`/impeccable`、`/ui-ux-pro-max` …

详见各 `SKILL.md` 的 `description`（即点单暗号）。

---

## 仓位 · Layout

```
latte-skills/
├── assets/banner.svg        ← 本店招牌（动画主视觉）
├── README.md  /  README.en.md  /  LICENSE (MIT)
├── frontend/                ← 前端拼配柜（13 杯）
│   ├── frontend-design/         ☕☕ 视觉方向
│   ├── design-taste-frontend/   ☕☕ 落地页/作品集
│   ├── ui-ux-pro-max/           ☕☕☕ 知识库 (data/ references/ scripts/)
│   ├── impeccable/              ☕☕☕ 审计+迭代 (reference/ scripts/ · 编译 v4.0.4)
│   ├── make-interfaces-feel-better/  ☕ 交互细节
│   ├── bklit-ui/                ☕ 图表组件 (SKILL.md + rules/)
│   ├── web-design-guidelines/   ☕ Vercel 规范校验
│   ├── theme-factory/           ☕ 10 套 CSS 主题（自烘）
│   ├── bencium/                 ☕ 规范约束（自烘）
│   ├── accesslint/              ☕ 无障碍合规（自烘）
│   ├── interface-design/        ☕ Token 持久化（自烘）
│   ├── gsap-skill/              ☕ GSAP 动画（自烘）
│   ├── vercel-agent-skills/     ☕ 工程化质量（自烘）
│   └── frontend-skills-hub/     ← 选路中心（无内嵌技能）
├── general/                ← 通用拼配柜
│   └── readme-makeover/        ☕☕ README 改造术（SKILL.md + references/）
├── quality/                ← 质量与验证柜（6 杯）
│   ├── verification-before-completion/  ☕ 完成前验证
│   ├── systematic-debugging/      ☕☕ 根因排查
│   ├── test-driven-development/   ☕☕ TDD 纪律
│   ├── performance-optimization/  ☕☕ 实证优化
│   ├── security-and-hardening/    ☕☕ 安全审查
│   └── code-review-and-quality/   ☕ 代码审查
├── ai-development/        ← AI 开发柜（2 杯）
│   ├── mcp-builder/             ☕☕ MCP 服务器构建
│   └── claude-api/              ☕☕☕ Claude API 知识包
├── product/               ← 需求与规格柜（1 杯）
│   └── specification-and-acceptance/  ☕☕ 规格与验收
├── architecture/          ← 架构决策柜（1 杯）
│   └── architecture-decision-records/  ☕ ADR 决策记录
├── backend/               ← 后端与数据柜（3 杯）
│   ├── supabase-postgres-best-practices/  ☕☕☕ Postgres 工程实践
│   ├── api-contract-design/       ☕☕ API 契约设计
│   └── database-migrations/       ☕☕ 安全迁移
└── （未来: delivery/ operations/  …）
```

---

## 便携冲煮 · Portability

- `impeccable` / `ui-ux-pro-max` 萃取脚本走 `<skill-base-dir>` 约定——由运行时报出技能所在目录，**不写死本机路径**
- Windows 上 Python 不在 PATH 时用 `py -3`（`ui-ux-pro-max` 搜索）
- `web-design-guidelines` 运行时需联网拉 Vercel 规则
- `bklit-ui` 装图表走 `npx shadcn@latest`，需联网访问 @bklit registry 与 ui.bklit.com 文档
- `impeccable` 的 `allowed-tools` / 斜杠命令 / hook 是 Claude Code 概念；ZCode 下作设计指导 + `node` 调脚本仍可用

---

## 自烘一豆 · Add Your Own

```bash
cp -r <技能目录> frontend/<技能名>/      # 入柜
# 确认 SKILL.md 的 name 与文件夹名一致
git add -A && git commit -m "feat: 新豆 <技能名>" && git push
```

新增拼配柜（分类）：直接在根目录建文件夹，并在上方菜单与仓位里登记。

---

## 来源与许可 · Sources & License

本店精选豆均来自开源庄园，各自保留原产地许可：

| 豆 | 许可 |
|---|---|
| `ui-ux-pro-max` | MIT |
| `impeccable` | Apache 2.0 |
| `bklit-ui` | MIT |
| `verification-before-completion` / `systematic-debugging` / `test-driven-development` | MIT（obra/superpowers） |
| `performance-optimization` | MIT（addyosmani/agent-skills） |
| `security-and-hardening` / `code-review-and-quality` | MIT（自烘重写，溯源见各 UPSTREAM.md） |
| `mcp-builder` / `claude-api` | Apache 2.0（anthropics/skills，随目录保留 LICENSE.txt） |
| `supabase-postgres-best-practices` | MIT（supabase/agent-skills） |
| `api-contract-design` / `database-migrations` | MIT（自烘，溯源见各 PROVENANCE.md） |
| 其余上游豆 | 见各产地 LICENSE |

**自烘内容**（`frontend-skills-hub/` 及其 6 杯拼配、README、招牌与脚手架）采用 **MIT 许可证**（见根目录 [LICENSE](LICENSE)）；`frontend/` 下上游豆保留各自原始许可。

---

<p align="center"><sub>┈┈┈┈┈┈┈ ☕ ┈┈┈┈┈┈┈</sub></p>
<p align="center"><sub>觉得好喝就点个 ⭐ Star · Brewed with ☕ by <a href="https://github.com/wxj-1019">wxj-1019</a></sub></p>
