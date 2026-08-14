---
name: bencium
description: Design constraint enforcer with two modes — Controlled (strict design system consistency for team projects) and Innovative (creative exploration for experimental designs). Use when maintaining design consistency across long-lived products, when needing design system enforcement, or when exploring radical new visual directions without losing structure.
---

# Bencium — 设计规范约束器

## 概述

两种工作模式，根据项目阶段和团队需求切换：
- **Controlled 模式**: 强制约束，确保团队设计一致性
- **Innovative 模式**: 鼓励创意，突破常规探索新方向

## Controlled 模式 — 设计规范强制

### 适用场景
- 已有成熟设计系统的团队项目
- 长周期产品迭代（6+ 个月）
- 多人协作，需确保视觉一致性
- 品牌形象已确定，不可随意偏离

### 强制规则

1. **Design Token 优先**
   - 所有颜色、间距、圆角、阴影必须引用 design tokens
   - 代码中绝不允许出现裸值（硬编码 #hex、px 值）
   ```css
   /* ✅ 正确 */
   color: var(--color-primary);
   padding: var(--space-md);
   /* ❌ 错误 */
   color: #3B82F6;
   padding: 16px;
   ```

2. **组件库单源**
   - UI 组件必须来自统一组件库，禁止 ad-hoc 实现
   - 新组件需走评审流程加入组件库
   - 已有组件的变体优先于新建组件

3. **视觉回归检查**
   - 任何样式变更需要检查影响范围
   - 修改全局 token 前检查所有引用点

4. **排版刻度**
   - 使用预定义排版刻度，禁止随意字号
   - 字号序列: 12, 14, 16, 18, 20, 24, 30, 36, 48, 60, 72
   - 行高序列: 1, 1.25, 1.5, 1.75, 2

5. **间距系统**
   - 基于 4px 或 8px 基准的间距刻度
   - 序列: 4, 8, 12, 16, 20, 24, 32, 40, 48, 64, 80, 96

6. **断点固定**
   - 使用预定义断点，禁止任意媒体查询
   - 断点: 320, 640, 768, 1024, 1280, 1440, 1920

7. **色彩系统分层**
   - Primary → Primary Hover → Primary Active（3 层递进）
   - 每个品牌色必须有完整色阶（50-950 或 100-900）

### Controlled 模式检查清单
- [ ] 所有颜色值来自 CSS 变量
- [ ] 所有间距值来自间距刻度
- [ ] 无自定义组件（全部来自组件库）
- [ ] 字号和行高来自排版刻度
- [ ] 断点使用预定义值
- [ ] 交互状态完整（hover/focus/active/disabled）

## Innovative 模式 — 创意探索

### 适用场景
- 概念设计 / 设计实验
- 品牌重塑探索
- Hackathon / 设计冲刺
- 新功能预售页面

### 创意引导规则

1. **定义实验边界**
   - 明确哪些可以突破（配色、字体、布局）
   - 明确哪些不可改变（品牌 logo、核心功能交互）

2. **每次实验一个变量**
   - 单次只改变一个设计维度（如只改配色，不改字体）
   - 记录实验假设和结论

3. **激进方案需备选**
   - 每个激进探索配一个保守方案
   - A/B 对比做出决策

4. **时间盒约束**
   - 实验有明确截止时间
   - 到期后必须做出采纳/放弃决策

5. **灵感来源记录**
   - 每次探索记录参考来源（URL、截图）
   - 建立团队设计灵感库

### Innovative 模式流程
1. **发散**: 生成 3-5 个不同方向的方案
2. **收敛**: 团队投票选出 2 个最佳方案
3. **深化**: 对入选方案做高保真细化
4. **决策**: 最终二选一或融合

## 模式切换规则

- 从 Controlled 切换到 Innovative: 需要明确实验目标和时间盒
- 从 Innovative 切换到 Controlled: 实验成果需整理为规范后才能纳入系统
- 同一页面不可混合两种模式

## 组合建议

- **长周期产品**: Controlled 模式 + `interface-design`（设计系统持久化）
- **设计探索**: Innovative 模式 + `frontend-design`（风格参考）
- **组件开发**: Controlled 模式 + `vercel-agent-skills`（组件最佳实践）
