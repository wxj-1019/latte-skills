---
name: vercel-agent-skills
description: Engineering quality enforcer for UI code — focuses on technical quality, not aesthetics. Covers web design guidelines (100+ accessibility/performance/UX rules), React best practices (57 rules across 8 categories), component composition patterns (Compound Components, Render Props, etc.), and React Native mobile best practices. Use as a complement to visual design skills for production-grade frontend projects.
---

# Vercel Agent Skills — 工程化质量守门员

## 概述

本技能专注 UI 代码的**技术质量**，是视觉设计技能的完美补充。包含 4 个子模块：

| 子技能 | 内容 | 文件 |
|--------|------|------|
| Web Design Guidelines | 100+ 条可访问性、性能、UX 规则审计 | [web-design-guidelines.md](web-design-guidelines.md) |
| React Best Practices | 57 条规则，8 个分类，React/Next.js 性能优化 | [react-best-practices.md](react-best-practices.md) |
| Composition Patterns | 可扩展组件架构模式 | [composition-patterns.md](composition-patterns.md) |
| React Native Skills | 移动端 UI 性能与动画最佳实践 | React Native 场景启用 |

## 使用方式

1. **Web 项目**: 全部 3 个子模块生效
2. **React Native**: 仅 React Native Skills 生效
3. **非 React 项目**: Web Design Guidelines 生效

## 与视觉技能的协作

```
视觉技能 (frontend-design / uiux-pro-max)
    ↓ 输出: 设计方向、配色、字体
工程化技能 (vercel-agent-skills)
    ↓ 审查: 可访问性、性能、代码质量
最终交付
```

## 子模块快速索引

### Web Design Guidelines
聚焦全局前端质量：
- 语义化 HTML
- CSS 架构（避免深层嵌套、避免 !important）
- 性能优化（CLS、LCP、FID、TTFB）
- 移动端适配
- SEO 基础

→ 详见 [web-design-guidelines.md](web-design-guidelines.md)

### React Best Practices
聚焦 React/Next.js 代码质量：
- 组件设计（单一职责、命名、文件组织）
- 状态管理（何时用 useState/useReducer/context/外部库）
- 性能（React.memo、useMemo、useCallback、code splitting）
- Hooks 使用规则
- Next.js 特定优化（SSR/SSG/ISR 选择、Image 组件、Server Actions）

→ 详见 [react-best-practices.md](react-best-practices.md)

### Composition Patterns
聚焦可扩展组件架构：
- Compound Components
- Render Props vs Hooks
- State Reducer Pattern
- Context + Provider 模式
- Slot 模式（Radix UI 风格）

→ 详见 [composition-patterns.md](composition-patterns.md)

## 组合建议

- **黄金组合**: `frontend-design`（视觉方向）+ 本技能（技术质量）
- **React 项目**: 本技能的 react-best-practices + composition-patterns
- **全栈项目**: 本技能 + `accesslint`（无障碍）
