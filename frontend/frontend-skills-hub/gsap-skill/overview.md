# GSAP 技能体系索引

## 概述

用户已构建完整的 GSAP 技能体系（gsap-skill），包含 8 个专业模块，用于系统化优化网站动画效果。本文件为索引，指向已有的 8 个 GSAP 模块。

## 模块列表

| 模块 | 定位 | 核心能力 |
|------|------|----------|
| **gsap-core** | GSAP 核心基础 | Tween/Timeline 基础动画、easing 曲线、动画控制方法 |
| **gsap-timeline** | 时间线编排 | 复杂动画序列编排、嵌套时间线、position 参数 |
| **gsap-scrolltrigger** | 滚动驱动 | 滚动触发动画、pin 固定、scrub 绑定、视差效果 |
| **gsap-plugins** | 插件生态 | ScrollTrigger、SplitText、MorphSVG、DrawSVG、Flip |
| **gsap-react** | React 集成 | useGSAP hook、useRef 绑定、SSR 安全、cleanup 管理 |
| **gsap-performance** | 性能优化 | will-change、requestAnimationFrame、debounce ScrollTrigger、GPU 加速 |
| **gsap-utils** | 工具函数 | 随机值、mapRange、交错动画、响应式动画参数 |
| **gsap-3d** | 3D 动画 | Three.js + GSAP 协同、WebGL 场景动画、3D 相机路径 |

## 动画触发场景

根据 `frontend-design` 技能中的动画指南，GSAP 体系应用于：

1. **Hero 入场动画**: 使用 gsap-core + gsap-timeline 编排多元素交错入场
2. **滚动揭示**: 使用 gsap-scrolltrigger + gsap-plugins (SplitText) 实现逐字/逐行揭示
3. **页面切换**: 使用 gsap-core + gsap-3d 实现 Page Transition
4. **微交互**: 使用 gsap-core + gsap-react 实现 spring 物理曲线动画
5. **视差效果**: 使用 gsap-scrolltrigger 多层视差 + scrub

## 性能约束 (来自 gsap-performance)

- 动画仅使用 `transform` 和 `opacity`，避免触发 layout
- `will-change` 仅在动画期间启用，结束后移除
- ScrollTrigger 使用 `debounce` 或 `clamp` 防止高频触发
- 移动端降低动画复杂度（减少同时动画元素数）

## 与前端技能体系的协作

```
frontend-design (决定动画风格方向)
    ↓
theme-factory / uiux-pro-max (配色和字体)
    ↓
gsap-skill (实现具体动画)
    ↓
vercel-agent-skills (性能和质量审查)
    ↓
impeccable (动画细节打磨)
    ↓
accesslint (reduced-motion 兼容检查)
```

## 组合建议

- **营销落地页**: `frontend-design` + gsap-scrolltrigger + gsap-timeline
- **SaaS 产品**: gsap-react + `vercel-agent-skills`
- **创意作品集**: `frontend-design` (Brutalism/极繁) + gsap-3d + gsap-plugins
- **品牌官网**: gsap-timeline + gsap-scrolltrigger + `impeccable` (动画打磨)
