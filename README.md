<p align="center">
  <img src="assets/banner.svg" alt="latte-skills — skills, brewed for your AI" width="960">
</p>

<p align="center">
  <em>一杯技能，提神你的 AI 工作流。<br>A shot of skill, brewed for your AI workflow.</em>
</p>

<p align="center">
  <a href="#"><img src="https://img.shields.io/badge/brews-13-%23c98f2c"></a>
  <a href="#"><img src="https://img.shields.io/badge/ZCode%20%C2%B7%20Claude%20Code%20%C2%B7%20Codex-compatible-success"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT%20(self--built)-blue"></a>
  <a href="https://github.com/wxj-1019/latte-skills/commits"><img src="https://img.shields.io/github/last-commit/wxj-1019/latte-skills"></a>
  <a href="https://github.com/wxj-1019/latte-skills"><img src="https://img.shields.io/github/stars/wxj-1019/latte-skills?style=social"></a>
</p>

<p align="center"><b>简体中文</b> · <a href="README.en.md">English</a></p>

---

> 🫘 **latte-skills** 把优质的设计与工程技能（SKILL.md）当**咖啡豆**来经营——
> **萃取、拼配、按需冲煮**。分类即拼配豆，技能即特调，克隆即开张。
> 一处烘焙，随处装杯。

## ✨ 本店特色

| | |
|---|---|
| 🫘 **单品精选** | 每颗豆都经实测可用，不灌水 |
| 🧩 **即装即饮** | 复制到技能目录、重启会话即出杯 |
| 🗂️ **拼配归档** | 按领域分柜（`frontend/` …），无限续杯 |
| 🔌 **多机兼容** | ZCode / Claude Code / Codex / Cursor 通用 SKILL.md |
| 🚚 **便携冲煮** | 脚本走 `<skill-base-dir>`，不写死本机路径 |

> 浓度图例：`☕` 清饮（聚焦） · `☕☕` 中烘 · `☕☕☕` 特浓（重型/知识量大）

---

## ☕ 今日特调 · Signature Menu

6 款上游原味豆，社区公认优质，均已验证出杯：

| 特调 | 浓度 | 风味 | 产地 |
|---|:---:|---|---|
| **frontend-design** | ☕☕ | 定新页视觉方向，反 AI 模板化，刻意配色/字体/布局 | [anthropics/skills](https://github.com/anthropics/skills) |
| **design-taste-frontend** | ☕☕ | 落地页/作品集按 brief+品牌推断方向，改版先审计 | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| **ui-ux-pro-max** | ☕☕☕ | 79 风格 / 192 配色 / 74 字体 / 119 UX 规则，`search.py` 按域萃取 | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| **impeccable** | ☕☕☕ | 23 命令设计审计/打磨/浏览器实时迭代（编译 v4.0.4） | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| **make-interfaces-feel-better** | ☕ | 同心圆角 / 光学对齐 / 点击区 / 微交互细节 | [jakubkrehel/make-interfaces-feel-better](https://github.com/jakubkrehel/make-interfaces-feel-better) |
| **web-design-guidelines** | ☕ | Vercel Web 规范合规审查（运行时拉最新规则） | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |

---

## 🧪 萃取一杯 · Quick Brew

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

## 📋 完整菜单 · Full Menu

### 🎨 `frontend/` — 前端设计（13 杯）

**店藏拼配**（`frontend-skills-hub/` 内，自烘）：

| 拼配 | 风味 |
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
未来拼配柜：
### 🛠️ backend/
### 🧪 general/
-->

---

## 🧑‍💻 怎么点单 · Usage

技能不是按钮，是**给 AI 的风味说明书**。两种点法：

**1. 自然语言（推荐）** — 描述口味，AI 自动配豆：

| 你说 | 出杯 |
|---|---|
| "帮我设计一个有独特风格的落地页" | `frontend-design` / `design-taste-frontend` |
| "查一下企业后台常见的配色和字体" | `ui-ux-pro-max` |
| "这页感觉不对，打磨到专业级" | `impeccable` |
| "按钮/卡片的圆角对齐点击区调舒服" | `make-interfaces-feel-better` |
| "检查这 UI 是否符合 Web 规范" | `web-design-guidelines` |

**2. 直点单品**：`/frontend-design`、`/impeccable`、`/ui-ux-pro-max` …

详见各 `SKILL.md` 的 `description`（即点单暗号）。

---

## 🗂️ 仓位 · Layout

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
│   ├── web-design-guidelines/   ☕ Vercel 规范校验
│   └── frontend-skills-hub/     ← 选路中心 + 7 杯自烘拼配
└── （未来: backend/  general/  …）
```

---

## 🚚 便携冲煮 · Portability

- `impeccable` / `ui-ux-pro-max` 萃取脚本走 `<skill-base-dir>` 约定——由运行时报出技能所在目录，**不写死本机路径**
- Windows 上 Python 不在 PATH 时用 `py -3`（`ui-ux-pro-max` 搜索）
- `web-design-guidelines` 运行时需联网拉 Vercel 规则
- `impeccable` 的 `allowed-tools` / 斜杠命令 / hook 是 Claude Code 概念；ZCode 下作设计指导 + `node` 调脚本仍可用

---

## ➕ 自烘一豆 · Add Your Own

```bash
cp -r <技能目录> frontend/<技能名>/      # 入柜
# 确认 SKILL.md 的 name 与文件夹名一致
git add -A && git commit -m "feat: 新豆 <技能名>" && git push
```

新增拼配柜（分类）：直接在根目录建文件夹，并在上方菜单与仓位里登记。

---

## 📜 来源与许可 · Sources & License

本店精选豆均来自开源庄园，各自保留原产地许可：

| 豆 | 许可 |
|---|---|
| `ui-ux-pro-max` | MIT |
| `impeccable` | Apache 2.0 |
| 其余上游豆 | 见各产地 LICENSE |

**自烘内容**（`frontend-skills-hub/` 及其 7 杯拼配、README、招牌与脚手架）采用 **MIT 许可证**（见根目录 [LICENSE](LICENSE)）；`frontend/` 下上游豆保留各自原始许可。

---

<p align="center"><sub>┈┈┈┈┈┈┈ ☕ ┈┈┈┈┈┈┈</sub></p>
<p align="center"><sub>觉得好喝就点个 ⭐ Star · Brewed with ☕ by <a href="https://github.com/wxj-1019">wxj-1019</a></sub></p>
