---
name: readme-makeover
description: Transform a bland, generic, or AI-templated project README into a distinctive, branded, professional landing page — a visual hero (animated SVG banner), a memorable brand metaphor mined from the project name, shields.io badges, a consistent SVG icon system for section headers (one family, one brand color — no emoji-as-icons), a strong scannable structure (highlights → install → usage → catalog → license), and optional bilingual + LICENSE/.gitattributes. Use whenever a README looks generic or needs a creative/visual upgrade, or the user says '美化/重做 README' / 'README 太普通/不够酷/不够专业/不够前卫' / 'make my README look better' / 'redesign the README' / wants badges, a banner, or better icons, or complains the README or its icons look AI-generated ('图标过于AI化'). Works for open-source, personal, and work repos.
---

# README Makeover

Turn a forgettable README into the project's best landing page. The aim is a README that is **distinctive, on-brand, and still genuinely useful** — style that serves communication, not decoration for its own sake.

## Core principle

> A great README answers three questions in five seconds: **What is this? Why care? How do I start?** Design and metaphor make those answers memorable; they never replace them.

If a change makes the README prettier but harder to scan or less informative, cut it.

## The method

### 1. Diagnose first
Read the current README. Say concretely what's weak: no hero, no quick start, no badges, wall of text, copy-paste aesthetic, no license, no structure. Tell the user what you found before redesigning — this also calibrates scope (a quick polish vs a full rebuild).

### 2. Find the brand metaphor (the single biggest lever)
Mine the **project name or domain** for a metaphor, then let it drive vocabulary, section headers, emoji, ratings, and the hero art. This is what separates "polished" from "memorable".

- `latte-skills` → **coffee shop**: skills = brews, categories = blends, install = brew, sources = origin/estate, strength = ☕ roast
- `forge` / `kiln` → metallurgy / craft
- an animal-named CLI → that animal as mascot
- a database repo → "vault / shelf" storage metaphor

If the name has no hook, fall back to the domain. Don't force it — a clean professional README beats a strained theme.

### 3. Design a visual hero
A banner SVG at the top is the strongest single visual upgrade. See [references/hero-and-assets.md](references/hero-and-assets.md) for a concrete recipe (viewBox, gradients, SMIL animation, palette) and the GitHub rendering caveat.

Key points:
- One `assets/banner.svg`, embedded via `<p align="center"><img src="assets/banner.svg" width="960"></p>`
- On-brand (metaphor object + wordmark), ~960×260–320
- Animate subtly (steam, pulse, draw-in). **Animation is a bonus — the design must hold up static**, because GitHub sanitizes SVG and may freeze SMIL.
- The accent color you pick here also drives the icon system (see [references/icons.md](references/icons.md)) — one palette across banner, badges, and icons.

### 4. Add badges (≤ ~6)
shields.io static + dynamic badges under the hero. Pick a tight set: a scope/count badge, a platform or license badge, last-commit, stars, PRs-welcome. More than ~6 reads as noise and pushes content down.

### 5. Use a strong, scannable structure
Canonical order (rename sections to fit the metaphor):

1. Hero + one-line tagline + badges + language switcher
2. Short manifesto / why (2–4 lines, the metaphor stated)
3. Highlights (a 2-column benefits table)
4. **Featured / Signature** (the 3–6 things people actually came for)
5. Quick start / install — terminal-styled + a per-environment table
6. Full catalog / menu (tables)
7. Usage — a "you-say-X → this-fires" table is gold for skill/tool repos
8. Structure (tree with one-line annotations)
9. Portability / gotchas
10. Add your own / contributing
11. Sources & license
12. Footer (Star CTA + author)

### 6. Creative devices (sparingly — they compound)
- **An icon system** for section headers and key table labels — one family, one stroke, one brand color. See [references/icons.md](references/icons.md). This is what makes a README read as hand-designed; **emoji as section icons is the #1 AI tell — never do it**.
- **Rating scales** tied to the metaphor (☕ strength, 🔥 heat, ⚡ speed): playful + information-dense — the one legitimate use of emoji
- **Themed headers** (rename to the metaphor's vocabulary, e.g. `今日特调` for "Signature") over boring "Installation" — pair with an icon from the system, never with emoji
- **Terminal-style** install blocks with commented, barista-style steps
- **Subtle dividers** (`┈┈┈┈ ┈┈┈┈`) — plain, or with a single small brand glyph in the footer only

### 7. Never drop the must-haves
Style is worthless without: a copy-pasteable quick start, an install-location table for the target tools, attribution + licenses for upstream/borrowed assets, and (for shared repos) a `LICENSE` + `.gitattributes`.

### 8. Bilingual if it'll travel
Mirror an English `README.en.md` and put a language switcher at the top of **both** files. Keep structure identical so they stay in sync; don't let one drift.

## Worked example
`latte-skills` (a personal skills repo) was rebuilt around a **coffee-shop** theme mined from the name "latte": an animated SVG banner of a latte cup with rising steam, skills reframed as "brews" with ☕ strength ratings, install as "brew a cup", upstream sources as "origin/estate", and a 12-glyph icon set (single 1.5 stroke, brand gold `#c98f2c`) replacing emoji in section headers. The same content became more memorable *and* easier to scan. Reference, not a template — your metaphor will differ.

## Quick reference — what every great README has
| Must-have | Why |
|---|---|
| Hero banner | First impression, sets brand in 1s |
| One-line tagline | "What is this" answered instantly |
| Quick start (copy-paste) | "How do I start" answered in 1 block |
| Per-environment install table | Removes the "where do I put it" friction |
| Highlights + Featured | "Why care" + the good stuff surfaced |
| Attribution + LICENSE | Legal + credit hygiene |
| Scannable structure | Skim → read, not wall-of-text |

## Common mistakes
- **Forcing a metaphor that doesn't fit** → clean professional beats strained cute
- **Hero so tall it pushes content below the fold** → keep banner ≤ ~320px
- **Badge spam** → pick ≤ ~6
- **Restyling but dropping quick start / license** → useless pretty page
- **Animation that only works off-GitHub** → design must hold static (see references)
- **Bilingual files that drift** → keep structure identical, sync both
- **Emoji as section icons** (`## 🚀 Quick Start`) → instant AI-Generated look; use the icon system or plain headers (see references/icons.md)
- **Mixed icon families** (emoji + two SVG styles + mismatched brand logos in one file) → one family, one stroke, one color

## When to stop
Stop when the README is scannable, on-brand, and every must-have is present — not when it's "maximal". More badges and bigger art past that point is diminishing returns.
