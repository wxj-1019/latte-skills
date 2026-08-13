---
name: accesslint
description: WCAG 2.2 AA/AAA accessibility compliance auditor. Checks color contrast, ARIA roles, keyboard navigation, focus management, and screen reader compatibility. Use for government, finance, healthcare, or any project requiring accessibility compliance. Also use as a final verification step before shipping any frontend.
---

# AccessLint — 无障碍合规检查

## 概述

自动检查 WCAG 2.2 AA/AAA 合规性。适合政府、金融、医疗等对无障碍有强制要求的项目。

## 合规等级

| 等级 | 要求 | 适用场景 |
|------|------|----------|
| **A** | 最低级别，基本无障碍 | 所有网站最低标准 |
| **AA** | 目标级别，法律通常要求 | 商业网站、多数行业 |
| **AAA** | 最高级别 | 政府、医疗、特殊人群服务 |

## 审查检查清单

### 1. 色彩与对比度 (WCAG 1.4)

- [ ] **正文对比度 ≥ 4.5:1** (AA) / ≥ 7:1 (AAA)
- [ ] **大文本对比度 ≥ 3:1** (AA) / ≥ 4.5:1 (AAA) — 大文本 ≥ 18px bold 或 ≥ 24px
- [ ] **UI 组件对比度 ≥ 3:1** — 输入框边框、图标、焦点环
- [ ] **不依赖颜色传递信息** — 错误状态除了红色还有图标/文字
- [ ] **链接区分** — 正文中的链接不仅靠颜色区分（下划线或其他视觉线索）

### 2. 键盘导航 (WCAG 2.1)

- [ ] **所有功能可通过键盘操作** — Tab/Shift+Tab 完整遍历
- [ ] **可见焦点指示器** — 焦点样式清晰可见（outline 不隐藏）
- [ ] **焦点顺序合理** — Tab 顺序与视觉顺序一致
- [ ] **无键盘陷阱** — 焦点不会卡在某个元素中（如模态框内可 Esc 退出）
- [ ] **跳过链接** — 页面顶部有 Skip to main content
- [ ] **快捷键不冲突** — 自定义快捷键不与浏览器/屏幕阅读器冲突

### 3. 屏幕阅读器 (WCAG 4.1)

- [ ] **语义化 HTML** — 使用正确的 HTML 元素（header, nav, main, article, aside, footer）
- [ ] **标题层级** — h1-h6 正确嵌套不跳级
- [ ] **图片 alt 文本** — 信息性图片有描述，装饰性图片 alt=""
- [ ] **ARIA 标签** — 无文本的交互元素（图标按钮、关闭按钮）有 aria-label
- [ ] **表单 label 关联** — label for 匹配 input id，或用 aria-labelledby
- [ ] **动态内容通知** — 搜索结果、表单错误使用 aria-live region
- [ ] **展开/折叠状态** — aria-expanded 属性标记
- [ ] **Tab 面板** — 使用 role="tablist" + role="tab" + role="tabpanel"
- [ ] **模态框** — role="dialog" + aria-modal="true" + aria-labelledby
- [ ] **Landmarks** — 使用 HTML5 sectioning 元素或 ARIA landmarks

### 4. 表单与输入 (WCAG 3.3)

- [ ] **错误提示明确** — 描述错误原因 + 如何修正
- [ ] **错误关联输入框** — 使用 aria-describedby 关联错误消息
- [ ] **必填字段标识** — 不仅靠颜色，还有文字/符号标识
- [ ] **标签始终可见** — placeholder 不能替代 label
- [ ] **输入类型正确** — 邮箱用 type="email"，日期用 type="date"
- [ ] **autocomplete 属性** — 常用字段开启浏览器自动填充

### 5. 时间与动画 (WCAG 2.2)

- [ ] **时间限制可调整** — 会话超时前警告，可延长
- [ ] **自动播放可暂停** — 自动播放的视频/动画可暂停/停止
- [ ] **动画 < 5 秒** — 自动动画不超过 5 秒或可关闭
- [ ] **闪烁 < 3 次/秒** — 避免引发光敏性癫痫
- [ ] **prefers-reduced-motion** — 尊重系统减少动画偏好

### 6. 移动与触摸 (WCAG 2.5)

- [ ] **触摸目标 ≥ 24x24px** (2.5.5, AAA) / 推荐 ≥ 44x44px
- [ ] **手势替代** — 复杂手势（捏合、滑动）有简单替代（按钮）
- [ ] **动作取消** — 触摸操作可在结束前取消（将手指移开）
- [ ] **横竖屏** — 内容不锁定单一方向（除非必要）

### 7. 内容与可读性 (WCAG 3.1)

- [ ] **语言声明** — html lang="zh-CN" 或 "en"
- [ ] **部分语言变化** — 多语言段落用 lang 属性标记
- [ ] **缩写解释** — 首次出现的缩写提供全称 (abbr title)
- [ ] **阅读水平** — 内容不超过初中阅读水平（AAA，政府要求）

### 8. 兼容性 (WCAG 4.1)

- [ ] **HTML 有效** — 无解析错误（开始/结束标签匹配、属性不重复）
- [ ] **自定义组件有 name/role/value** — 确保辅助技术可访问
- [ ] **状态和属性** — aria-checked, aria-disabled, aria-selected 等正确使用

## 快速审计命令

审查页面时，按以下优先级：

```
1. 键盘导航: Tab 遍历全页 → 检查焦点可见 → 检查焦点顺序
2. 对比度: 随机取 3-5 处文字/背景色比对
3. 标题层级: 检查 h1-h6 结构
4. 图片: 检查 3-5 张图片的 alt 属性
5. 表单: 检查 label 关联
6. Screen Reader: aria-label/aria-labelledby 覆盖
```

## 常见问题速查

| 问题 | WCAG 条款 | 快速修复 |
|------|-----------|----------|
| 对比度不足 | 1.4.3 | 加深文字颜色或加深背景 |
| 缺少 alt | 1.1.1 | 添加描述性 alt 或 alt="" |
| 无可见焦点 | 2.4.7 | 添加 :focus-visible outline |
| 表单无 label | 1.3.1 | 添加 label for="id" |
| 跳过链接缺失 | 2.4.1 | 添加 Skip to main content |
| 无 lang 属性 | 3.1.1 | html lang="zh-CN" |
| div 当按钮 | 4.1.2 | 改用 button 元素 |
| 自动播放无暂停 | 1.4.2 | 添加播放/暂停控件 |

## 组合建议

- **政府/金融/医疗**: 本技能 + `uiux-pro-max`（行业配色不影响无障碍）
- **通用项目**: 作为 `vercel-agent-skills` 的补充审查层
- **最终检查**: 所有项目交付前运行本技能审查
