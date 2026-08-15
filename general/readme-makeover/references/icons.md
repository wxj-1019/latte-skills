# Icons — a system that reads as designed, not generated

Emoji used as section icons and generic gradient marks are the fastest way to make a README look AI-generated. This file is the counter-recipe: a small icon system that reads as hand-designed. The SKILL.md decides *where* icons go; this file decides *what they look like*.

## Hard rules (the anti-AI gates)

1. **No emoji as section/list/table icons.** `## 🚀 Quick Start` is the #1 AI tell. Emoji survive in exactly two places: rating scales (`☕☕☕` — information, not decoration) and at most one brand glyph in the footer divider.
2. **One family per README.** Same viewBox (24×24), same stroke width (1.5–2), same corner language (round caps/joins), same single color. Mixing emoji + clip-art + two SVG styles reads as generated.
3. **Icons take the banner accent color, baked in.** GitHub renders `<img>`-referenced SVGs in isolation — `currentColor` and page CSS never reach them. Write the hex into each file (`stroke="#…"` or `fill="#…"`) and update it if the palette changes.
4. **Flat, monochrome, outline.** No gradients, no shadows, no multi-color icons in headers and tables.
5. **Semantic only.** An icon must map to a noun in the section title (`frontend/` → a screen, `quality/` → a shield-check, `backend/` → a database). If it doesn't, drop it — an icon is a label, not decoration.

## Strategy 1 (default): copy from a proven icon library

Human-designed open-source libraries; permissive licenses:

| Library | License | Use for | Where |
|---|---|---|---|
| Lucide | ISC | Default choice — stroke-based, 1500+ icons | lucide.dev/icons |
| Tabler Icons | MIT | Larger set (5000+) when Lucide lacks a glyph | tabler.io/icons |
| Phosphor | MIT | When you need multiple weights | phosphoricons.com |
| Simple Icons | CC0 | Brand/tool logos (GitHub, React, …) | simpleicons.org |

Workflow:

1. Pick **one** library for the whole README. Brand logos from Simple Icons may join only if they visually match (monochrome, similar weight).
2. Copy the SVG source (from the library's site, or a pinned package URL like `https://unpkg.com/lucide-static@<version>/icons/<name>.svg`), save as `assets/icons/<name>.svg`.
3. Recolor: set `stroke` (Lucide/Tabler/Phosphor) or `fill` (Simple Icons) to the banner accent. Leave viewBox and geometry untouched.
4. Embed in headers and table labels:

   ```html
   ### <img src="assets/icons/screen.svg" width="16" alt=""> frontend/ — 前端设计
   ```

   `width="16"`–`18` for inline header icons; `alt=""` — the heading text carries the meaning, the icon is decorative.
5. Attribute in the README's Sources section: library + pinned version + license, e.g. "Section icons: Lucide 0.460.0 (ISC), recolored to brand gold".

Zero-file alternative for **brand logos only**: hotlink `https://cdn.simpleicons.org/<slug>/<hex>` directly in `<img>` — served in your exact color, no local file. Trade-offs: an external dependency, and it covers brand logos, not section icons. Use it to complement, never to replace, the local set.

## Strategy 2 (fallback): draw your own, on the library grid

Draw only metaphor-specific glyphs no library has (a coffee bean, the project mascot). Then follow the library's conventions so hand-drawn and library icons sit together without a seam:

- Canvas `viewBox="0 0 24 24"`, `fill="none"`, `stroke="<accent>"`, `stroke-width="1.5"`–`2`, `stroke-linecap="round"` + `stroke-linejoin="round"`.
- Build from primitives: **2–4 simple shapes** (ellipse, rect, gentle path curves). If a glyph needs more than ~4 shapes or fine detail, it will not survive 16px — simplify until it does.
- Squint test: render at 16×16; if you can't name it while squinting, it's too detailed.
- Ban list (the "AI generator" aesthetic): gradient orbs, swooshes orbiting a mark, gradient-filled hexagons/cubes, bevel/3D effects, drop shadows, more than one color per icon.

A shape that passes — the latte-skills coffee bean (an ellipse + one S-curve, 2 shapes, readable at 16px):

```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none"
     stroke="#c98f2c" stroke-width="1.5" stroke-linecap="round">
  <ellipse cx="12" cy="12" rx="6" ry="9" transform="rotate(-10 12 12)"/>
  <path d="M12 3.5C10 7 10 9 12 12s-2 6 0 8.5"/>
</svg>
```

## Consistency checklist (run before shipping)

- [ ] Zero emoji outside rating scales / the footer divider
- [ ] Every icon shares color, stroke, viewBox — diff two files side by side to verify
- [ ] Icon color equals the banner accent, not a new hue
- [ ] Each icon maps to a noun in its section title
- [ ] Library icons pinned + attributed; hand-drawn ones noted as original work
- [ ] Every icon passes the 16px squint test
