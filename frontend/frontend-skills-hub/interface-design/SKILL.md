---
name: interface-design
description: Design system persistence enforcer. Embeds design system rules into the AI workflow, enforces theme tokens, and bans hardcoded color/style values. Use for long-lived product iterations where design consistency must be maintained across pages and sprints, preventing design debt accumulation.
---

# Interface Design — 设计系统持久化

## 概述

确保跨页面、跨迭代的设计一致性。将设计系统规则嵌入 AI 工作流，强制使用主题 tokens，禁止硬编码颜色，防止"设计债"侵蚀。

## 核心原则

### 1. Token 强制执行

代码中**绝对禁止**出现以下裸值：
- 硬编码颜色 (`#3B82F6`, `rgb(59, 130, 246)`)
- 硬编码间距 (`16px`, `1rem`, `padding: 24px`)
- 硬编码圆角 (`border-radius: 8px`)
- 硬编码字号 (`font-size: 16px`)
- 硬编码阴影 (`box-shadow: 0 2px 8px rgba(0,0,0,0.1)`)

必须替换为 design tokens：
```css
/* ❌ 禁止 */
.card {
  background: #FFFFFF;
  color: #1A1A2E;
  padding: 24px;
  border-radius: 12px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
}

/* ✅ 强制 */
.card {
  background: var(--color-surface);
  color: var(--color-text);
  padding: var(--space-lg);
  border-radius: var(--radius-md);
  box-shadow: var(--shadow-sm);
}
```

### 2. Design Token 定义规范

每个项目必须在 `:root` 或主题文件中定义以下 token 层级：

```css
:root {
  /* === 色彩系统 === */
  /* 品牌色 (3 层) */
  --color-primary: #...;
  --color-primary-hover: #...;
  --color-primary-active: #...;

  /* 强调色 (3 层) */
  --color-accent: #...;
  --color-accent-hover: #...;
  --color-accent-active: #...;

  /* 语义色 */
  --color-success: #...;
  --color-warning: #...;
  --color-error: #...;
  --color-info: #...;

  /* 表面色 (3 层深度) */
  --color-surface: #...;
  --color-surface-alt: #...;
  --color-surface-elevated: #...;

  /* 文字色 (4 层) */
  --color-text: #...;
  --color-text-secondary: #...;
  --color-text-muted: #...;
  --color-text-inverse: #...;

  /* 边框色 (3 层) */
  --color-border: rgba(..., 0.08);
  --color-border-hover: rgba(..., 0.16);
  --color-border-focus: var(--color-primary);

  /* === 间距系统 (4px 基准) === */
  --space-xs: 4px;
  --space-sm: 8px;
  --space-md: 16px;
  --space-lg: 24px;
  --space-xl: 32px;
  --space-2xl: 48px;
  --space-3xl: 64px;
  --space-4xl: 96px;

  /* === 排版系统 === */
  --font-display: '...', sans-serif;
  --font-body: '...', sans-serif;
  --font-mono: '...', monospace;

  --text-xs: 0.75rem;    /* 12px */
  --text-sm: 0.875rem;   /* 14px */
  --text-base: 1rem;     /* 16px */
  --text-lg: 1.125rem;   /* 18px */
  --text-xl: 1.25rem;    /* 20px */
  --text-2xl: 1.5rem;    /* 24px */
  --text-3xl: 1.875rem;  /* 30px */
  --text-4xl: 2.25rem;   /* 36px */
  --text-5xl: 3rem;      /* 48px */

  --leading-tight: 1.25;
  --leading-normal: 1.5;
  --leading-relaxed: 1.75;

  /* === 圆角系统 === */
  --radius-sm: 4px;
  --radius-md: 8px;
  --radius-lg: 12px;
  --radius-xl: 16px;
  --radius-2xl: 24px;
  --radius-full: 9999px;

  /* === 阴影系统 (3 层) === */
  --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.04);
  --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.06);
  --shadow-lg: 0 8px 24px rgba(0, 0, 0, 0.08);

  /* === 断点 === */
  --breakpoint-sm: 640px;
  --breakpoint-md: 768px;
  --breakpoint-lg: 1024px;
  --breakpoint-xl: 1280px;
  --breakpoint-2xl: 1440px;
}
```

### 3. 变更管理流程

当需要新增或修改 design token 时：

1. **提出变更**: 说明需要新 token 的原因（不要为单个页面创建 token）
2. **影响分析**: 检查现有 token 是否可替代，评估修改范围
3. **命名规范**: 遵循 `--{category}-{variant}` 命名，保持语义化（非视觉化）
   - ✅ `--color-primary` (语义)
   - ❌ `--color-blue` (视觉，换色要改名)
4. **文档更新**: 同步更新 token 定义文件

### 4. 防止设计债

以下行为会产生设计债，必须避免：
- 为新页面创建独立的样式系统
- 用 utility class 覆盖 token（Tailwind 中避免 `bg-[#custom]`)
- 复制粘贴组件代码而非复用
- 在组件内部覆盖全局 token

## 跨页面一致性检查

- [ ] 所有页面使用同一套 CSS 变量
- [ ] 相似的交互模式使用相同的组件
- [ ] 导航结构在所有页面一致
- [ ] 页脚结构在所有页面一致
- [ ] 表单样式在所有页面一致
- [ ] 错误/成功/加载状态展示方式一致

## Tailwind CSS 集成

在 Tailwind 项目中，扩展配置以映射 design tokens：

```js
// tailwind.config.js
module.exports = {
  theme: {
    extend: {
      colors: {
        primary: {
          DEFAULT: 'var(--color-primary)',
          hover: 'var(--color-primary-hover)',
          active: 'var(--color-primary-active)',
        },
        surface: {
          DEFAULT: 'var(--color-surface)',
          alt: 'var(--color-surface-alt)',
          elevated: 'var(--color-surface-elevated)',
        },
        // ... 映射所有 token
      },
      spacing: {
        'xs': 'var(--space-xs)',
        'sm': 'var(--space-sm)',
        'md': 'var(--space-md)',
        // ...
      },
      borderRadius: {
        'sm': 'var(--radius-sm)',
        'md': 'var(--radius-md)',
        // ...
      },
    },
  },
};
```

## 组合建议

- **长周期产品**: 本技能 + `bencium` Controlled 模式（双重约束）
- **组件库构建**: 本技能 + `vercel-agent-skills` composition-patterns
- **快速原型**: 可放宽约束，但标记为「原型代码不可合并」
- **已有项目改造**: 渐进式迁移，每次迭代迁移一个模块
