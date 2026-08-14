---
name: frontend-skills-hub
description: Use when doing frontend/UI design work and unsure which design skill applies - routes to the right tool (visual direction, design-system knowledge, detail polish, delivery validation) and is the entry point for the curated frontend collection (CSS themes, design constraints, WCAG accessibility, GSAP animation, React/component engineering quality). Covers landing pages, dashboards, components, redesigns, design systems, and animation.
---

# 🧭 前端技能调度中心

> 前端技能的选路入口。7 款上游设计技能与 6 款自烘策展技能均已**拍平为顶层 skill**（可被 ZCode 直接调用）；本 hub 是唯一选路中心，内嵌决策树与流水线。

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
| 📊 图表/数据可视化 | `bklit-ui` | 14 类图表按 @bklit registry 安装；组合/主题/动画规则含正误示例 |
| ✅ 交付前规范校验 | `web-design-guidelines` | Vercel Web 规范合规审查（运行时拉取最新规则） |

### 🗂️ 策展技能（已展平到 `frontend/` 顶层，与本 hub 同级）

| 你想做什么？ | 用什么技能 | 一句话说明 |
|-------------|-----------|-----------|
| 🎭 快速套主题 | [theme-factory](../theme-factory/SKILL.md) | 10 套开箱即用 CSS 主题 |
| 🔒 约束设计规范 | [bencium](../bencium/SKILL.md) | Controlled（收紧）/ Innovative（放开） |
| ⚙️ 代码质量 | [vercel-agent-skills](../vercel-agent-skills/SKILL.md) | React 实践 + Web 规范 + 组件模式 |
| ♿ 无障碍检查 | [accesslint](../accesslint/SKILL.md) | WCAG 2.2 AA/AAA 合规 |
| 🏗️ 设计系统持久化 | [interface-design](../interface-design/SKILL.md) | Token 强制 + 防设计债 |
| 🎬 动画引擎 | [gsap-skill](../gsap-skill/SKILL.md) | GSAP 动画体系 |

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
| 图表、chart、数据可视化、dashboard 图表 | `bklit-ui` |
| 校验、合规、审计、review UI、Web 规范 | `web-design-guidelines` |
| 规范、统一、约束、Token | `interface-design` 或 `bencium` |
| 代码质量、性能、最佳实践 | `vercel-agent-skills` |
| 无障碍、WCAG、a11y | `accesslint` |
| 动画、GSAP、动效 | `gsap-skill` |

### 3️⃣ 别踩坑

- ❌ 别同时用 `frontend-design` + `ui-ux-pro-max` 做主决策（会冲突）
- ❌ 别在没代码时调 `impeccable` 的 polish/audit（没东西诊断；它的 new-work 可从零开始）
- ❌ 别跳过 `accesslint` 直接交付
- ❌ 别在能装 `bklit-ui` 图表时手搓 SVG（先 `npx shadcn@latest add @bklit/<slug>`）
- ❌ 别把 `ui-ux-pro-max` 的 `data/*.csv` 全量载入（用 `scripts/search.py --domain` 按需查询；本机 Python 走 `py -3`）
- ❌ 别在 `bencium` Controlled 模式下用 `frontend-design`
- ✅ `impeccable` 已编译到 v4.0.4：模板变量全部解析为 `<skill-base-dir>` 约定（脚本可移植、不写死本机路径），`node` 可直接调用
- ⚠️ `vercel-agent-skills/` 内的 web-design-guidelines.md 已去重为指针，权威原版为同级的 `web-design-guidelines`

---

## 🧠 深度决策树（原 skill-orchestrator 合并）

### 决策树

```
用户说"帮我设计一个页面"
    │
    ├─ 从零开始，追求独特？
    │   → frontend-design（定方向）→ theme-factory（选配色）→ vercel-agent-skills（写代码）
    │
    ├─ 快速出活，风格无所谓？
    │   → ui-ux-pro-max（search.py 匹配风格+配色）→ vercel-agent-skills（写代码）
    │
    ├─ 已有页面，需要打磨？
    │   → impeccable（诊断问题）→ 修复后 → accesslint（无障碍复查）
    │
    ├─ 长周期产品，要规范？
    │   → interface-design（Token 体系）→ bencium Controlled（约束检查）
    │
    ├─ 创意实验，想玩点不一样的？
    │   → bencium Innovative（放开约束）→ frontend-design（风格探索）
    │
    ├─ 政府/医疗/金融项目？
    │   → ui-ux-pro-max（行业配色）→ vercel-agent-skills → accesslint（必检）
    │
    └─ 需要炫酷动画？
        → frontend-design（动画方向）→ gsap-skill（实现）→ impeccable（打磨）
```

### 互斥/替代关系

| 场景 | 选 A | 还是选 B？ |
|------|------|-----------|
| 风格方向 | `frontend-design`（引领性） | `ui-ux-pro-max`（参考性） |
| 配色方案 | `theme-factory`（即用主题） | `ui-ux-pro-max` data/colors.csv（更大库） |
| 规范约束 | `bencium` Controlled（管流程） | `interface-design`（管 Token） |
| 质量审查 | `vercel-agent-skills`（编码质量） | `impeccable`（视觉质量） |

> **关键原则**：`frontend-design` 和 `ui-ux-pro-max` 二选一为主，不要同时用。前者是「我要独特」，后者是「帮我匹配」。

### 流水线 5：创意实验（探索链路）

```
Step 1: bencium Innovative  → 设定实验边界 + 时间盒
Step 2: frontend-design     → 选择大胆风格方向
Step 3: ui-ux-pro-max       → search.py --domain styles 浏览 79 种风格获取灵感
Step 4: 决策                → 采纳/放弃/融合
Step 5: bencium Controlled  → 实验成果规范化（如采纳）
```

**适用**：品牌重塑、设计冲刺、概念验证  
**耗时**：时间盒驱动，到期即决策

### 调用技巧

1. **先粗后细** — 不要一开始就调 `impeccable`。先定方向（`frontend-design`）→ 写代码（`vercel-agent-skills`）→ 最后打磨。反过来会反复返工。
2. **知识库随用随查** — `ui-ux-pro-max` 的 `data/*.csv` 不要全量读，用 `scripts/search.py --domain` 按域查询（本机 Python 走 `py -3`）。
3. **Token 先于编码** — 在 `vercel-agent-skills` 写代码前，先让 `interface-design` 或 `theme-factory` 输出 CSS 变量，避免全局替换。
4. **GSAP 不独行** — 动画方向来自 `frontend-design`，性能约束来自 `vercel-agent-skills`，打磨来自 `impeccable`。
5. **递进式交付** — 第一轮功能 + Token；第二轮动效；第三轮 `impeccable` 像素打磨；第四轮 `accesslint` 无障碍。
6. **冲突检测** — `frontend-design` 禁用 Inter/Roboto 时跳过 ui-ux-pro-max 相应字体；`bencium` Controlled 要求 Token 时不能同时「自由发挥」；`accesslint` 高对比度要求下部分暗色主题需微调。

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
├── bklit-ui/                      ← [顶层] 图表组件（bklit/bklit-ui 原版，MIT）
├── web-design-guidelines/         ← [顶层] Vercel Web 规范校验（运行时拉最新规则）
├── theme-factory/                 ← [顶层] 10 套 CSS 主题（自烘）
├── bencium/                       ← [顶层] 设计规范约束（自烘）
├── accesslint/                    ← [顶层] WCAG 无障碍合规（自烘）
├── interface-design/              ← [顶层] 设计系统持久化（自烘）
├── gsap-skill/                    ← [顶层] GSAP 动画体系（自烘）
├── vercel-agent-skills/           ← [顶层] 工程化质量（自烘）
└── frontend-skills-hub/           ← 选路中心（仅 SKILL.md + 决策树，无内嵌技能）
```

---

## 一句话总结

**定方向** → `frontend-design` / `design-taste-frontend` | **查知识** → `ui-ux-pro-max` | **打磨迭代** → `impeccable` | **微细节** → `make-interfaces-feel-better` | **图表可视化** → `bklit-ui` | **交付校验** → `web-design-guidelines` + `accesslint` | **工程化** → `vercel-agent-skills` | **不确定用哪个** → 看上方的深度决策树
