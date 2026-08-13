# latte-skills ☕

个人常用 AI 技能集（SKILL.md 格式），按分类组织。当前已收录前端设计技能，后续将逐步补充其它分类（backend / general / …）。

## 目录结构

```
latte-skills/
├── frontend/                      # 前端设计技能
│   ├── frontend-design/           # 反同质化视觉方向（Anthropic 原版）
│   ├── design-taste-frontend/     # 反 slop 方向：落地页/作品集/改版
│   ├── ui-ux-pro-max/             # 设计知识库（nextlevelbuilder 原版）
│   ├── impeccable/                # 23 命令设计指导 + 浏览器迭代（已编译 v4.0.4）
│   ├── make-interfaces-feel-better/  # 像素级交互细节
│   ├── web-design-guidelines/     # Vercel Web 规范校验
│   └── frontend-skills-hub/       # 策展 hub：7 个自建技能 + 选路
│       ├── theme-factory/  bencium/  accesslint/
│       ├── interface-design/  gsap-skill/  vercel-agent-skills/
│       └── skill-orchestrator/
└── （未来: backend/  general/  …）
```

## 使用方式

每个技能是一个 `SKILL.md`（+ 配套文件），安装到 AI 工具的技能目录即可：

- **ZCode**：复制/符号链接到 `~/.zcode/skills/<技能名>/`（ZCode 按一层发现，文件夹名 = frontmatter `name`）
- **Claude Code**：放到 `.claude/skills/<技能名>/`
- 安装后重启会话，即可在可用技能列表中看到并调用

### 快速安装示例（ZCode）

```bash
git clone https://github.com/wxj-1019/latte-skills.git
cp -r latte-skills/frontend/frontend-design ~/.zcode/skills/
```

## 技能一览（frontend/，上游原版均已验证可用）

| 技能 | 用途 | 来源 |
|---|---|---|
| `frontend-design` | 定新页视觉方向，反模板，刻意配色/字体/布局 | anthropics/skills |
| `design-taste-frontend` | 落地页/作品集按 brief+受众+品牌推断方向，改版先审计 | Leonxlnx/taste-skill |
| `ui-ux-pro-max` | 79 风格/192 配色/74 字体/119 UX 规则，search.py 按域查询 | nextlevelbuilder/ui-ux-pro-max-skill |
| `impeccable` | 23 命令审计/打磨/浏览器实时迭代（编译版 v4.0.4，模板已解析） | pbakaus/impeccable |
| `make-interfaces-feel-better` | 同心圆角/光学对齐/点击区/微交互细节 | jakubkrehel/make-interfaces-feel-better |
| `web-design-guidelines` | Vercel Web 规范合规审查（运行时拉取最新规则） | vercel-labs/agent-skills |
| `frontend-skills-hub` | 策展 hub：选路 + 7 个自建技能（主题/约束/无障碍/设计系统/动画/工程化/调度） | 自建 |

## 便携性说明

- `impeccable` / `ui-ux-pro-max` 的脚本调用使用 `<skill-base-dir>` 约定（由运行时报告技能所在目录），不写死本机路径；首次使用时按实际安装路径解析
- Windows 上 Python 不在 PATH 时用 `py -3`（ui-ux-pro-max 搜索脚本）
- `web-design-guidelines` 运行时需联网拉取 Vercel 规则

## 来源与许可证

上游技能均来自开源项目：

- [anthropics/skills](https://github.com/anthropics/skills)（frontend-design）
- [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill)（design-taste-frontend）
- [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill)（ui-ux-pro-max，MIT）
- [pbakaus/impeccable](https://github.com/pbakaus/impeccable)（impeccable，Apache 2.0）
- [jakubkrehel/make-interfaces-feel-better](https://github.com/jakubkrehel/make-interfaces-feel-better)（make-interfaces-feel-better）
- [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills)（web-design-guidelines）

`frontend-skills-hub/` 及其中 7 个策展技能为自建。

## 维护

- 新增技能：`cp -r <技能目录> <分类>/<技能名>/`，确保 `SKILL.md` 的 `name` 与文件夹名一致
- 新增分类：直接在根目录建文件夹，并在 README 结构图中补充
