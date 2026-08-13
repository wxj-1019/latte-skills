---
name: frontend-skills-hub
description: Use when doing frontend/UI design work and unsure which design skill applies - routes to the right tool (visual direction, design-system knowledge, detail polish, delivery validation) and is the entry point for the curated frontend collection (CSS themes, design constraints, WCAG accessibility, GSAP animation, React/component engineering quality). Covers landing pages, dashboards, components, redesigns, design systems, and animation.
---

# 🧭 前端技能调度中心

> 前端技能的选路入口。6 款上游设计技能已**拍平为顶层 skill**（可被 ZCode 直接调用）；本 hub 另托管 7 个策展技能并负责选路。

---

## 快速导航

### 🎯 上游设计技能（顶层 skill，直接调用）

| 你想做什么？ | 用什么技能 | 一句话说明 |
|-------------|-----------|-----------|
| 🎨 定新页视觉方向 | `frontend-design` | 反模板，刻意且有意图的配色/字体/布局 |
| 👅 落地页/作品集定方向 | `design-taste-frontend` | 按 brief/受众/品牌资产推断方向，改版先审计 |
| 📚 查设计知识库 | `ui-ux-pro-max` | 79 风格 + 192 配色 + 74 字体 + 119 UX 规则（search.py 按域查询） |
| 🔍 全方位设计打磨 | `impeccable` | 23 命令审计/打磨/浏览器实时迭代（已编译 v4.0.4） |
| ✨ 像素级交互细节 | `make-interfaces-feel-better` | 同心圆角、光学对齐、点击区、微交互 |
| ✅ 交付前规范校验 | `web-design-guidelines` | Vercel Web 规范合规审查（运行时拉取最新规则） |

### 🗂️ 策展技能（本 hub 内）

| 你想做什么？ | 用什么技能 | 一句话说明 |
|-------------|-----------|-----------|
| 🎭 快速套主题 | [theme-factory](theme-factory/SKILL.md) | 10 套开箱即用 CSS 主题 |
| 🔒 约束设计规范 | [bencium](bencium/SKILL.md) | Controlled（收紧）/ Innovative（放开） |
| ⚙️ 代码质量 | [vercel-agent-skills](vercel-agent-skills/SKILL.md) | React 实践 + Web 规范 + 组件模式 |
| ♿ 无障碍检查 | [accesslint](accesslint/SKILL.md) | WCAG 2.2 AA/AAA 合规 |
| 🏗️ 设计系统持久化 | [interface-design](interface-design/SKILL.md) | Token 强制 + 防设计债 |
| 🎬 动画引擎 | [gsap-skill](gsap-skill/overview.md) | GSAP 8 模块体系 |
| 🧠 调度指南 | [skill-orchestrator](skill-orchestrator/SKILL.md) | 决策树 + 流水线 + 调用技巧 |

---

## 三步上手

### 1️⃣ 看场景选流水线

```
从零做项目 → 流水线 1（7 步全链路）
  frontend-design → theme-factory → ui-ux-pro-max → vercel-agent-skills → gsap-skill → impeccable → accesslint

快速原型   → 流水线 2（2 步最小）
  ui-ux-pro-max → vercel-agent-skills

页面翻新   → 流水线 3（诊断修复）
  impeccable → 按 P0-P3 修复 → accesslint

设计系统   → 流水线 4（规范建设）
  interface-design → bencium → theme-factory → vercel-agent-skills
```

### 2️⃣ 看关键词选技能

| 用户说了这些词 | 立刻调 |
|---------------|--------|
| 设计、风格、配色、字体、独特 | `frontend-design` |
| 落地页、作品集、改版、受众、品牌、slop | `design-taste-frontend` |
| 参考、查找、有哪些、帮我选 | `ui-ux-pro-max` |
| 主题、模板、现成的 | `theme-factory` |
| 方向重塑、critique、audit、polish、迭代 | `impeccable` |
| 圆角、对齐、点击区、交互细节、手感 | `make-interfaces-feel-better` |
| 校验、合规、审计、review UI、Web 规范 | `web-design-guidelines` |
| 规范、统一、约束、Token | `interface-design` 或 `bencium` |
| 代码质量、性能、最佳实践 | `vercel-agent-skills` |
| 无障碍、WCAG、a11y | `accesslint` |
| 动画、GSAP、动效 | `gsap-skill` |

### 3️⃣ 别踩坑

- ❌ 别同时用 `frontend-design` + `ui-ux-pro-max` 做主决策（会冲突）
- ❌ 别在没代码时调 `impeccable` 的 polish/audit（没东西诊断；它的 new-work 可从零开始）
- ❌ 别跳过 `accesslint` 直接交付
- ❌ 别把 `ui-ux-pro-max` 的 `data/*.csv` 全量载入（用 `scripts/search.py --domain` 按需查询；本机 Python 走 `py -3`）
- ❌ 别在 `bencium` Controlled 模式下用 `frontend-design`
- ✅ `impeccable` 已编译到 v4.0.4：模板变量全部解析，脚本路径为本机绝对路径，`node` 可直接调用
- ⚠️ `vercel-agent-skills/` 内的 web-design-guidelines.md 已去重为指针，权威原版在顶层 `web-design-guidelines`

---

## 目录结构

```
~/.zcode/skills/                   ← ZCode 按此层发现 skill
├── frontend-design/               ← [顶层] 反同质化视觉方向（Anthropic 原版）
├── design-taste-frontend/         ← [顶层] 反 slop 方向：落地页/作品集/改版（自包含 ~87KB）
├── ui-ux-pro-max/                 ← [顶层] 设计知识库（nextlevelbuilder 原版）
│   └── SKILL.md / data/ references/ scripts/   ← scripts/search.py 按域查询（py -3）
├── impeccable/                    ← [顶层] 23 命令设计指导 + 浏览器迭代（已编译 v4.0.4）
│   └── SKILL.md / reference/ / scripts/
├── make-interfaces-feel-better/   ← [顶层] 交互细节打磨（jakubkrehel 原版）
├── web-design-guidelines/         ← [顶层] Vercel Web 规范校验（运行时拉最新规则）
└── frontend-skills-hub/           ← 你在这里（策展技能 + 调度中心）
    ├── SKILL.md
    ├── theme-factory/             ← 10 套 CSS 主题
    ├── bencium/                   ← 设计规范约束
    ├── vercel-agent-skills/       ← 工程化质量（React/Web/组件）
    ├── accesslint/                ← 无障碍合规
    ├── interface-design/          ← 设计系统持久化
    ├── gsap-skill/                ← GSAP 动画体系
    └── skill-orchestrator/        ← 详细调度指南
```

---

## 一句话总结

**定方向** → `frontend-design` / `design-taste-frontend` | **查知识** → `ui-ux-pro-max` | **打磨迭代** → `impeccable` | **微细节** → `make-interfaces-feel-better` | **交付校验** → `web-design-guidelines` + `accesslint` | **工程化** → `vercel-agent-skills` | **不确定用哪个** → 看 [skill-orchestrator](skill-orchestrator/SKILL.md)
