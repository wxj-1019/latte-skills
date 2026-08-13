<div align="center">

# ☕ latte-skills

**个人常用 AI 技能集 · SKILL.md 格式 · 多分类组织**

把优质的设计/工程技能（SKILL.md）集中管理、按分类归档——**一处克隆，随处安装**。

[![skills](https://img.shields.io/badge/skills-13-blue)]()
[![platforms](https://img.shields.io/badge/ZCode%20·%20Claude%20Code%20·%20Codex-compatible-success)]()
[![last commit](https://img.shields.io/github/last-commit/wxj-1019/latte-skills)](https://github.com/wxj-1019/latte-skills/commits)
[![stars](https://img.shields.io/github/stars/wxj-1019/latte-skills?style=social)](https://github.com/wxj-1019/latte-skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)]()

</div>

一份可克隆、可分发的个人技能库。每个技能都是一个带 `SKILL.md` 的文件夹，复制到任意 AI 工具的技能目录即可使用。当前收录 **前端设计** 分类（13 个技能），后续将持续补充其它分类。

## ✨ 特点

- 🧩 **即装即用**：每个技能自包含，复制到技能目录、重启会话即生效
- 🗂️ **分类归档**：按领域组织（`frontend/` …），便于检索与扩展
- 🔌 **多平台兼容**：ZCode / Claude Code / Codex CLI / Cursor 等通用 SKILL.md 格式
- 🚚 **便携优先**：脚本调用使用 `<skill-base-dir>` 约定，不写死本机路径
- 🏷️ **来源透明**：每个技能标注上游仓库与许可证

## 📑 目录

- [🚀 快速开始](#-快速开始)
- [📚 技能目录](#-技能目录)
- [🧑‍💻 使用方式](#-使用方式)
- [🗂️ 仓库结构](#️-仓库结构)
- [🚚 便携性说明](#-便携性说明)
- [➕ 新增技能](#-新增技能)
- [📜 来源与许可证](#-来源与许可证)

---

## 🚀 快速开始

```bash
# 1. 克隆
git clone https://github.com/wxj-1019/latte-skills.git

# 2. 安装某个技能到你的 AI 工具技能目录（示例：ZCode）
cp -r latte-skills/frontend/frontend-design ~/.zcode/skills/

# 3. 重启会话，即可在技能列表中看到并调用
```

**各工具技能目录：**

| 工具 | 安装位置 |
|---|---|
| ZCode | `~/.zcode/skills/<技能名>/` |
| Claude Code | `.claude/skills/<技能名>/` 或 `~/.claude/skills/<技能名>/` |
| Codex CLI | `~/.agents/skills/<技能名>/` |
| Cursor | `~/.cursor/skills/<技能名>/` |

> ⚠️ 安装时**文件夹名必须等于 `SKILL.md` 里的 `name`**，否则部分工具无法发现该技能。

---

## 📚 技能目录

### 🎨 frontend/ — 前端设计（13 个）

**上游原版（社区优质资源，均已验证可用）**

| 技能 | 用途 | 来源 |
|---|---|---|
| `frontend-design` | 定新页视觉方向，反 AI 模板化 | [anthropics/skills](https://github.com/anthropics/skills) |
| `design-taste-frontend` | 落地页/作品集按 brief+品牌推断方向 | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| `ui-ux-pro-max` | 79 风格 / 192 配色 / 74 字体 / 119 UX 规则，`search.py` 按域查询 | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| `impeccable` | 23 命令设计审计/打磨/浏览器实时迭代（编译版 v4.0.4） | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| `make-interfaces-feel-better` | 同心圆角 / 光学对齐 / 点击区 / 微交互细节 | [jakubkrehel/make-interfaces-feel-better](https://github.com/jakubkrehel/make-interfaces-feel-better) |
| `web-design-guidelines` | Vercel Web 规范合规审查（运行时拉取最新规则） | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |

**自建策展（`frontend-skills-hub/` 内）**

| 技能 | 用途 |
|---|---|
| `frontend-skills-hub` | 选路中心：场景 → 技能路由 + 流水线 |
| `theme-factory` | 10 套开箱即用 CSS 主题 |
| `bencium` | 设计规范约束（Controlled / Innovative） |
| `accesslint` | WCAG 2.2 AA/AAA 无障碍合规 |
| `interface-design` | 设计系统持久化、Token 强制 |
| `gsap-skill` | GSAP 动画体系 |
| `vercel-agent-skills` | React 实践 + 组件模式（工程化质量） |
| `skill-orchestrator` | 详细决策树与流水线 |

<!--
未来分类预留：
### 🛠️ backend/
### 🧪 general/
-->

---

## 🧑‍💻 使用方式

技能不是给用户点按钮的程序，而是**给 AI agent 的专业说明书**。两种触发方式：

**1. 自然语言触发（推荐）**——直接描述任务，agent 自动匹配技能：

| 你说 | 命中技能 |
|---|---|
| "帮我设计一个有独特风格的落地页" | `frontend-design` / `design-taste-frontend` |
| "查一下企业后台常见的配色和字体" | `ui-ux-pro-max` |
| "这个页面感觉不对，帮我打磨到专业级" | `impeccable` |
| "按钮/卡片的圆角对齐点击区帮我调舒服" | `make-interfaces-feel-better` |
| "检查这个 UI 是否符合 Web 规范" | `web-design-guidelines` |

**2. 斜杠命令（强制指定）**：`/frontend-design`、`/impeccable`、`/ui-ux-pro-max` …

详见各技能 `SKILL.md` 的 `description` 字段（即触发条件）。

---

## 🗂️ 仓库结构

```
latte-skills/
├── README.md
├── frontend/                         # 前端设计技能（13 个）
│   ├── frontend-design/              # 反同质化视觉方向
│   ├── design-taste-frontend/        # 落地页/作品集方向
│   ├── ui-ux-pro-max/                # SKILL.md + data/ references/ scripts/
│   ├── impeccable/                   # SKILL.md + reference/ + scripts/（编译 v4.0.4）
│   ├── make-interfaces-feel-better/  # 交互细节打磨
│   ├── web-design-guidelines/        # Vercel 规范校验
│   └── frontend-skills-hub/          # 策展 hub + 7 个自建技能
└── （未来: backend/  general/  …）
```

---

## 🚚 便携性说明

- `impeccable` / `ui-ux-pro-max` 的脚本调用使用 `<skill-base-dir>` 约定——由运行时报告技能所在目录，**不写死本机路径**；首次使用按实际安装路径解析
- Windows 上 Python 不在 PATH 时用 `py -3`（`ui-ux-pro-max` 搜索脚本）
- `web-design-guidelines` 运行时需联网拉取 Vercel 规则
- `impeccable` 的 `allowed-tools` / 斜杠命令 / hook 是 Claude Code 概念；在 ZCode 中作为设计指导 + `node` 调脚本仍可用

---

## ➕ 新增技能

```bash
# 1. 把技能放进对应分类（没有就新建分类目录）
cp -r <技能目录> frontend/<技能名>/

# 2. 确认 SKILL.md 的 frontmatter name 与文件夹名一致
# 3. 提交
git add -A && git commit -m "feat: 添加 <技能名>" && git push
```

新增分类时，直接在根目录建文件夹，并在本 README 的「技能目录」与「仓库结构」中补充。

---

## 📜 来源与许可证

本仓库聚合的技能均来自开源项目，各自保留原许可证：

| 技能 | 许可证 |
|---|---|
| `ui-ux-pro-max` | MIT |
| `impeccable` | Apache 2.0 |
| 其余上游技能 | 见各上游仓库 LICENSE |

`frontend-skills-hub/` 及其中 7 个策展技能为自建内容。

---

<div align="center">

<sub>⭐ 如果对你有帮助，欢迎 Star · Made with ☕ by [wxj-1019](https://github.com/wxj-1019)</sub>

</div>
