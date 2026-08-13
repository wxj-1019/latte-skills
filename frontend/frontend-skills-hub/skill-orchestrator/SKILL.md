---
name: skill-orchestrator
description: Meta-skill that orchestrates the frontend skill ecosystem. Determines which skills to invoke, in what order, and how to combine them for maximum effect. Use when the user provides a complex frontend task, mentions multiple design/engineering concerns, or when unsure which skill to apply first. Acts as the entry point for skill dispatching.
---

# Skill Orchestrator — 前端技能调度中心

## 你的角色

你是前端技能体系的调度器。当用户提出前端需求时，你的职责是：
1. **分析需求**：判断属于设计、工程、打磨、无障碍哪个阶段
2. **选择技能**：匹配最优的技能组合
3. **决定顺序**：安排正确的调用链
4. **避免冗余**：不重复调用功能重叠的技能

---

## 技能全景图

### 设计类（视觉风格）
| 技能 | 定位 | 一句话 |
|------|------|--------|
| `frontend-design` | 风格破局 | 打破 AI 同质化，选设计方向 |
| `uiux-pro-max` | 知识库 | 查风格/配色/字体/UX 规则 |
| `theme-factory` | 配色模板 | 10 套开箱即用 CSS 主题 |
| `bencium` | 规范约束 | Controlled（收紧）/ Innovative（放开） |

### 工程类（技术质量）
| 技能 | 定位 | 一句话 |
|------|------|--------|
| `vercel-agent-skills` | 质量守门 | React 最佳实践 + Web 规范 + 组件模式 |
| `accesslint` | 无障碍 | WCAG 2.2 AA/AAA 合规检查 |

### 打磨类（精细化）
| 技能 | 定位 | 一句话 |
|------|------|--------|
| `impeccable` | 像素诊断 | 逐像素审查 + 优先级分级报告 |
| `interface-design` | 系统持久 | Token 强制 + 防设计债 |

### 动效类
| 技能 | 定位 | 一句话 |
|------|------|--------|
| `gsap-skill` | 动画引擎 | 8 模块 GSAP 体系 |

---

## 核心决策：选哪个？

### 决策树

```
用户说"帮我设计一个页面"
    │
    ├─ 从零开始，追求独特？
    │   → frontend-design（定方向）→ theme-factory（选配色）→ vercel-agent-skills（写代码）
    │
    ├─ 快速出活，风格无所谓？
    │   → uiux-pro-max（自动匹配风格+配色）→ vercel-agent-skills（写代码）
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
    │   → uiux-pro-max（行业配色）→ vercel-agent-skills → accesslint（必检）
    │
    └─ 需要炫酷动画？
        → frontend-design（动画方向）→ gsap-skill（实现）→ impeccable（打磨）
```

### 互斥/替代关系

| 场景 | 选 A | 还是选 B？ |
|------|------|-----------|
| 风格方向 | `frontend-design`（引领性） | `uiux-pro-max`（参考性） |
| 配色方案 | `theme-factory`（即用主题） | `uiux-pro-max` colors.md（更大库） |
| 规范约束 | `bencium` Controlled | `interface-design`（侧重不同：前者管流程，后者管 Token） |
| 质量审查 | `vercel-agent-skills`（编码质量） | `impeccable`（视觉质量） |

> **关键原则**：`frontend-design` 和 `uiux-pro-max` 二选一为主，不要同时用。前者是「我要独特」，后者是「帮我匹配」。

---

## 经典流水线

### 流水线 1：从零到交付（完整链路）

```
Step 1: frontend-design     → 确定设计方向、禁止项、字体配对
Step 2: theme-factory       → 选择/微调 CSS 主题配色
Step 3: uiux-pro-max        → 检索 UX 规则（ux-rules.md）和字体配对（fonts.md），生成交付检查清单
Step 4: vercel-agent-skills → React 组件 + Web 规范编码
Step 5: gsap-skill          → 入场动画 + 滚动揭示 + 微交互
Step 6: impeccable          → 像素级诊断，P0→P3 分级修复
Step 7: accesslint          → WCAG 无障碍最终审查
```

**适用**：全新项目、品牌官网、营销落地页  
**耗时**：完整走完 7 步，质量天花板

### 流水线 2：快速原型（最小链路）

```
Step 1: uiux-pro-max        → 自动匹配风格+配色+UX 规则
Step 2: vercel-agent-skills → 快速编码 + 质量基线
```

**适用**：Hackathon、MVP、内部工具  
**耗时**：2 步出活，质量够用

### 流水线 3：页面翻新（诊断链路）

```
Step 1: impeccable          → 全面诊断，输出 P0-P3 报告
Step 2: 逐项修复            → P0 立即修 → P1 本次修 → P2 下迭代
Step 3: accesslint          → 修复后无障碍复查
Step 4: interface-design    → 将修复沉淀为 design token（可选）
```

**适用**：已有项目优化、设计债清理  
**耗时**：诊断快，修复按优先级分批

### 流水线 4：设计系统建设（规范链路）

```
Step 1: interface-design    → 建立完整 Token 体系
Step 2: bencium Controlled  → 设定强制约束规则
Step 3: theme-factory       → Token 值参考主题模板
Step 4: vercel-agent-skills → 组件开发遵循 Token
```

**适用**：组件库、多团队协作、长周期产品  
**耗时**：一次性建设，持续受益

### 流水线 5：创意实验（探索链路）

```
Step 1: bencium Innovative  → 设定实验边界 + 时间盒
Step 2: frontend-design     → 选择大胆风格方向
Step 3: uiux-pro-max styles → 浏览 57 种风格获取灵感
Step 4: 决策                → 采纳/放弃/融合
Step 5: bencium Controlled  → 实验成果规范化（如采纳）
```

**适用**：品牌重塑、设计冲刺、概念验证  
**耗时**：时间盒驱动，到期即决策

---

## 调用技巧

### 技巧 1：先粗后细
不要一开始就调用 `impeccable`。先确定方向（`frontend-design`），写出代码（`vercel-agent-skills`），最后再打磨。反过来做会反复返工。

### 技巧 2：知识库随用随查
`uiux-pro-max` 的 4 个子文件（styles / colors / fonts / ux-rules）不需要一次性读完。按需读取：
- 选风格 → 读 styles.md
- 选配色 → 读 colors.md
- 选字体 → 读 fonts.md  
- 自检 → 读 ux-rules.md

### 技巧 3：Token 先于编码
在 `vercel-agent-skills` 写代码之前，先让 `interface-design` 或 `theme-factory` 输出 CSS 变量。避免后续全局替换的灾难。

### 技巧 4：GSAP 不独行
`gsap-skill` 实现动画，但动画方向来自 `frontend-design`（动画指南章节），性能约束来自 `vercel-agent-skills`（web-design-guidelines），打磨来自 `impeccable`（动画诊断）。永远不要单独用 GSAP。

### 技巧 5：递进式交付
不要试图一次性做到完美。第一轮：功能 + Token 体系；第二轮：交互动效；第三轮：impeccable 像素打磨；第四轮：accesslint 无障碍。

### 技巧 6：冲突检测
以下技能之间存在约束关系，调用时注意：
- `frontend-design` 禁用了 Inter/Roboto → `uiux-pro-max` fonts.md 中部分配对需跳过
- `bencium` Controlled 要求 Token → 不能同时要求"自由发挥"
- `accesslint` 要求高对比度 → 某些 `theme-factory` 暗色主题需微调

---

## 快速速查卡

| 用户说 | 立刻调用 |
|--------|----------|
| 「帮我设计一个页面」 | `frontend-design` |
| 「这个配色/字体怎么选」 | `uiux-pro-max` |
| 「给我一个现成的主题」 | `theme-factory` |
| 「这个页面看着不对劲」 | `impeccable` |
| 「代码质量怎么样」 | `vercel-agent-skills` |
| 「无障碍合规」 | `accesslint` |
| 「设计要规范统一」 | `interface-design` |
| 「要严格/要创新」 | `bencium` |
| 「加点动画效果」 | `gsap-skill` |
| 「从零做一个完整项目」 | 流水线 1（7 步全链路） |
| 「快速出个原型」 | 流水线 2（2 步最小链路） |

---

## 不要做的事

1. ❌ 同时调用 `frontend-design` + `uiux-pro-max` 做主决策 → 两者风格参考来源不同，会冲突
2. ❌ 在没写代码之前就调用 `impeccable` → 没有东西可以诊断
3. ❌ 项目快交付了才开始用 `interface-design` → Token 化应尽早
4. ❌ 跳过 `accesslint` 直接交付 → 无障碍是最后一道防线
5. ❌ 在 `bencium` Controlled 模式下用 `frontend-design` → 后者鼓励突破规范
6. ❌ 把 4 个子知识库文件一次性全加载 → 浪费上下文，按需读取

---

## 维护原则

当新增技能时，更新本文件：
1. 在「技能全景图」中添加新条目
2. 在「决策树」中补充分支
3. 在「互斥/替代关系」中注明与新技能的配合/冲突
4. 如有新流水线，添加到「经典流水线」章节
5. 更新「快速速查卡」
