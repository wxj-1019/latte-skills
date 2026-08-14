---
name: theme-factory
description: Rapid theme application with 10 professionally designed themes including complete color schemes and font pairings. Use when needing to quickly unify visual style, when starting a new project with a pre-made look, or when exploring design directions before committing to custom branding.
---

# Theme Factory — 主题工厂

## 概述

提供 10 套精心设计的专业主题，每套包含：
- 完整的 CSS 变量色彩方案
- 字体配对
- 适用场景说明

可与 `frontend-design` 结合确保既有独特设计又保持视觉一致性。

## 主题列表

### 1. Ocean Depths (海洋深处)
**氛围**: 冷静、专业、信任
**适用**: 金融科技、B2B、企业 SaaS

```css
:root {
  --color-primary: #0A2647;
  --color-primary-hover: #144272;
  --color-accent: #2C74B3;
  --color-surface: #F0F5FA;
  --color-surface-alt: #E8EFF7;
  --color-text: #0F1A2E;
  --color-text-muted: #5A7184;
  --color-border: rgba(10, 38, 71, 0.08);
  --shadow-sm: 0 1px 2px rgba(10, 38, 71, 0.04);
  --shadow-md: 0 4px 12px rgba(10, 38, 71, 0.06);
  --font-display: 'DM Sans', sans-serif;
  --font-body: 'DM Sans', sans-serif;
  --radius-sm: 6px;
  --radius-md: 12px;
  --radius-lg: 20px;
}
```

### 2. Sunset Terracotta (日落陶土)
**氛围**: 温暖、活力、亲切
**适用**: 电商、生活方式品牌、餐饮

```css
:root {
  --color-primary: #E07A5F;
  --color-primary-hover: #D06A4F;
  --color-accent: #3D405B;
  --color-surface: #FDF8F5;
  --color-surface-alt: #F9F0EB;
  --color-text: #2C1810;
  --color-text-muted: #8B6F64;
  --color-border: rgba(60, 40, 30, 0.08);
  --shadow-sm: 0 1px 2px rgba(60, 40, 30, 0.04);
  --shadow-md: 0 4px 12px rgba(60, 40, 30, 0.06);
  --font-display: 'Fraunces', serif;
  --font-body: 'Karla', sans-serif;
  --radius-sm: 8px;
  --radius-md: 16px;
  --radius-lg: 24px;
}
```

### 3. Forest Canopy (森林华盖)
**氛围**: 自然、可持续、平衡
**适用**: 健康、环保、有机品牌

```css
:root {
  --color-primary: #2D6A4F;
  --color-primary-hover: #1B4332;
  --color-accent: #95D5B2;
  --color-surface: #F0FAF4;
  --color-surface-alt: #E6F5EC;
  --color-text: #1B4332;
  --color-text-muted: #52796F;
  --color-border: rgba(27, 67, 50, 0.08);
  --shadow-sm: 0 1px 2px rgba(27, 67, 50, 0.04);
  --shadow-md: 0 4px 12px rgba(27, 67, 50, 0.06);
  --font-display: 'Lora', serif;
  --font-body: 'Nunito Sans', sans-serif;
  --radius-sm: 12px;
  --radius-md: 20px;
  --radius-lg: 28px;
}
```

### 4. Midnight Ink (午夜墨色)
**氛围**: 高端、神秘、奢华
**适用**: 奢侈品牌、作品集、创意工作室

```css
:root {
  --color-primary: #F5F5F5;
  --color-primary-hover: #E0E0E0;
  --color-accent: #C9A96E;
  --color-surface: #0D0D0D;
  --color-surface-alt: #1A1A1A;
  --color-text: #E5E5E5;
  --color-text-muted: #888888;
  --color-border: rgba(255, 255, 255, 0.08);
  --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.3);
  --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.4);
  --font-display: 'Playfair Display', serif;
  --font-body: 'Satoshi', sans-serif;
  --radius-sm: 2px;
  --radius-md: 4px;
  --radius-lg: 8px;
}
```

### 5. Tech Innovation (科技创新)
**氛围**: 现代、极简、前卫
**适用**: AI 产品、开发者工具、Web3

```css
:root {
  --color-primary: #000000;
  --color-primary-hover: #1A1A1A;
  --color-accent: #00D4AA;
  --color-surface: #FAFAFA;
  --color-surface-alt: #F0F0F0;
  --color-text: #171717;
  --color-text-muted: #666666;
  --color-border: rgba(0, 0, 0, 0.06);
  --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.04);
  --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.06);
  --font-display: 'Geist Sans', sans-serif;
  --font-body: 'Geist Sans', sans-serif;
  --radius-sm: 4px;
  --radius-md: 8px;
  --radius-lg: 16px;
}
```

### 6. Rose Gold (玫瑰金)
**氛围**: 优雅、女性化、柔和
**适用**: 美妆、时尚、婚礼

```css
:root {
  --color-primary: #B76E79;
  --color-primary-hover: #9D5B66;
  --color-accent: #D4A574;
  --color-surface: #FDFAF8;
  --color-surface-alt: #F9F2F0;
  --color-text: #3D2C2C;
  --color-text-muted: #8B7171;
  --color-border: rgba(150, 100, 100, 0.08);
  --shadow-sm: 0 1px 2px rgba(150, 100, 100, 0.04);
  --shadow-md: 0 4px 12px rgba(150, 100, 100, 0.08);
  --font-display: 'Cormorant Garamond', serif;
  --font-body: 'Jost', sans-serif;
  --radius-sm: 12px;
  --radius-md: 20px;
  --radius-lg: 32px;
}
```

### 7. Industrial Steel (工业钢铁)
**氛围**: 粗犷、力量、专业
**适用**: 制造业、B2B、建筑

```css
:root {
  --color-primary: #1A1A1A;
  --color-primary-hover: #333333;
  --color-accent: #E85D04;
  --color-surface: #F7F7F7;
  --color-surface-alt: #EEEEEE;
  --color-text: #1A1A1A;
  --color-text-muted: #666666;
  --color-border: rgba(0, 0, 0, 0.12);
  --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.06);
  --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.1);
  --font-display: 'Archivo Black', sans-serif;
  --font-body: 'IBM Plex Sans', sans-serif;
  --radius-sm: 0px;
  --radius-md: 0px;
  --radius-lg: 0px;
}
```

### 8. Lavender Mist (薰衣草薄雾)
**氛围**: 柔软、梦幻、创意
**适用**: 教育、心理健康、儿童

```css
:root {
  --color-primary: #7C5CBF;
  --color-primary-hover: #6A4DAB;
  --color-accent: #F4A261;
  --color-surface: #FDFBFF;
  --color-surface-alt: #F5F0FF;
  --color-text: #2D1B69;
  --color-text-muted: #7B6BA3;
  --color-border: rgba(100, 70, 160, 0.08);
  --shadow-sm: 0 1px 2px rgba(100, 70, 160, 0.04);
  --shadow-md: 0 4px 12px rgba(100, 70, 160, 0.08);
  --font-display: 'Nunito', sans-serif;
  --font-body: 'Nunito Sans', sans-serif;
  --radius-sm: 16px;
  --radius-md: 24px;
  --radius-lg: 32px;
}
```

### 9. Neon Noir (霓虹暗夜)
**氛围**: 赛博朋克、未来感、游戏
**适用**: 游戏、电子竞技、Web3/NFT

```css
:root {
  --color-primary: #FF00FF;
  --color-primary-hover: #CC00CC;
  --color-accent: #00FFFF;
  --color-surface: #0A0A0F;
  --color-surface-alt: #12121A;
  --color-text: #E0E0FF;
  --color-text-muted: #8080AA;
  --color-border: rgba(255, 0, 255, 0.15);
  --shadow-sm: 0 0 8px rgba(255, 0, 255, 0.2);
  --shadow-md: 0 0 20px rgba(0, 255, 255, 0.15);
  --font-display: 'Orbitron', sans-serif;
  --font-body: 'Exo 2', sans-serif;
  --radius-sm: 2px;
  --radius-md: 4px;
  --radius-lg: 8px;
}
```

### 10. Warm Minimal (温暖极简)
**氛围**: 现代、舒适、北欧
**适用**: SaaS、设计工具、生活方式

```css
:root {
  --color-primary: #2D3436;
  --color-primary-hover: #1E272E;
  --color-accent: #E17055;
  --color-surface: #FDFCFB;
  --color-surface-alt: #F5F0EB;
  --color-text: #2D3436;
  --color-text-muted: #636E72;
  --color-border: rgba(0, 0, 0, 0.06);
  --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.03);
  --shadow-md: 0 4px 12px rgba(0, 0, 0, 0.05);
  --font-display: 'Clash Display', sans-serif;
  --font-body: 'Satoshi', sans-serif;
  --radius-sm: 8px;
  --radius-md: 16px;
  --radius-lg: 24px;
}
```

## 使用方式

1. 选择最匹配项目气质的主题
2. 复制对应的 CSS 变量
3. 在全站使用这些变量（不硬编码颜色）
4. 可按需微调主题色，但保持变量结构

## 主题选择决策

| 项目类型 | 推荐主题 |
|----------|----------|
| B2B SaaS | Ocean Depths / Warm Minimal |
| 电商 | Sunset Terracotta / Rose Gold |
| 环保/健康 | Forest Canopy |
| 奢侈品牌 | Midnight Ink |
| Web3/NFT | Neon Noir / Tech Innovation |
| 游戏 | Neon Noir |
| 建筑/工业 | Industrial Steel |
| 教育 | Lavender Mist |
| AI/技术 | Tech Innovation |

## 组合建议

- **快速启动**: 本技能独立使用选主题
- **独特风格**: 先 `frontend-design` 确定方向，再本技能选配色起点
- **完整方案**: 本技能 + `ui-ux-pro-max`（79 风格 + 192 配色扩展选择）
