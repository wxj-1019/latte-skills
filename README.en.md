<p align="center">
  <img src="assets/banner.svg" alt="latte-skills — skills, brewed for your AI" width="960">
</p>

<p align="center">
  <em>A shot of skill, brewed for your AI workflow.</em>
</p>

<p align="center">
  <a href="#"><img src="https://img.shields.io/badge/brews-15-%23c98f2c"></a>
  <a href="#"><img src="https://img.shields.io/badge/ZCode%20%C2%B7%20Claude%20Code%20%C2%B7%20Codex-compatible-success"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT%20(self--built)-blue"></a>
  <a href="https://github.com/wxj-1019/latte-skills/commits"><img src="https://img.shields.io/github/last-commit/wxj-1019/latte-skills"></a>
  <a href="https://github.com/wxj-1019/latte-skills"><img src="https://img.shields.io/github/stars/wxj-1019/latte-skills?style=social"></a>
</p>

<p align="center"><b>English</b> · <a href="README.md">简体中文</a></p>

---

> <img src="assets/icons/bean.svg" width="16"> **latte-skills** treats high-quality design & engineering skills (SKILL.md) like **coffee beans** —
> **roast, blend, brew on demand.** Categories are blends, skills are brews, a clone opens the shop.
> Roast once, pour anywhere.

## Why this shop

| | |
|---|---|
| <img src="assets/icons/bean.svg" width="18"> **Single-origin picks** | Every bean is verified working — no filler |
| <img src="assets/icons/cup.svg" width="18"> **Plug-and-sip** | Drop into a skills dir, restart the session, served |
| <img src="assets/icons/shelf.svg" width="18"> **Blended shelves** | Organized by domain (`frontend/`, …), endless refills |
| <img src="assets/icons/port.svg" width="18"> **Multi-rig** | SKILL.md works on ZCode / Claude Code / Codex / Cursor |
| <img src="assets/icons/pour.svg" width="18"> **Portable brew** | Scripts use `<skill-base-dir>`, no hard-coded paths |

> Strength legend: `☕` light (focused) · `☕☕` medium · `☕☕☕` dark (heavyweight / knowledge-dense)

---

## Signature Menu

Seven upstream beans, community-renowned, all verified to pour:

| Brew | Strength | Flavor notes | Origin |
|---|:---:|---|---|
| **frontend-design** | ☕☕ | Set the visual direction for a new UI; anti-templated | [anthropics/skills](https://github.com/anthropics/skills) |
| **design-taste-frontend** | ☕☕ | Landing pages / portfolios; infer direction from brief + brand | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| **ui-ux-pro-max** | ☕☕☕ | 79 styles / 192 palettes / 74 fonts / 119 UX rules; `search.py` by domain | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| **impeccable** | ☕☕☕ | 23-command design audit / polish / live browser iteration (compiled v4.0.4) | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| **make-interfaces-feel-better** | ☕ | Concentric radius / optical alignment / hit areas / micro-interactions | [jakubkrehel/make-interfaces-feel-better](https://github.com/jakubkrehel/make-interfaces-feel-better) |
| **bklit-ui** | ☕ | 14 chart types via the @bklit shadcn registry; composition/theming/animation rules with Incorrect/Correct examples | [bklit/bklit-ui](https://github.com/bklit/bklit-ui) |
| **web-design-guidelines** | ☕ | Vercel Web Guidelines compliance review (fetches latest rules at runtime) | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |

---

## Quick Brew

```bash
# 1) Grab the beans
git clone https://github.com/wxj-1019/latte-skills.git

# 2) Brew a cup into your AI tool's skills dir (example: ZCode)
cp -r latte-skills/frontend/frontend-design ~/.zcode/skills/

# 3) Restart the session → sip ☕
```

**Where each rig expects beans:**

| Tool | Location |
|---|---|
| ZCode | `~/.zcode/skills/<skill>/` |
| Claude Code | `.claude/skills/<skill>/` or `~/.claude/skills/<skill>/` |
| Codex CLI | `~/.agents/skills/<skill>/` |
| Cursor | `~/.cursor/skills/<skill>/` |

> ⚠️ The **folder name must equal the `name` field** in `SKILL.md`, or some tools won't discover it.

---

## Full Menu

### 🎨 `frontend/` — Frontend Design (14 brews)

**House blends** (inside `frontend-skills-hub/`, self-roasted):

| Blend | Flavor |
|---|---|
| `frontend-skills-hub` | Routing hub: scenario → skill + pipelines |
| `theme-factory` | 10 ready-to-use CSS themes |
| `bencium` | Design-constraint toggle (Controlled / Innovative) |
| `accesslint` | WCAG 2.2 AA/AAA accessibility compliance |
| `interface-design` | Design-system persistence, enforced tokens |
| `gsap-skill` | GSAP animation system |
| `vercel-agent-skills` | React best practices + composition patterns |
| `skill-orchestrator` | Detailed decision tree and pipelines |

### 🧰 `general/` — General-purpose skills

| Blend | Strength | Flavor |
|---|:---:|---|
| **readme-makeover** | ☕☕ | Turn a bland/templated README into a branded, hero-led, scannable landing page: mine a brand metaphor → animated SVG banner → badges → strong structure → LICENSE/.gitattributes. See `general/readme-makeover/` (this very README was brewed with it ☕) |

<!--
Future shelves: ### 🛠️ backend/
-->

---

## How to order

Skills aren't buttons — they're **flavor primers for the AI**. Two ways to order:

**1. Natural language (recommended)** — describe the taste; the AI picks the bean:

| You say | Brew poured |
|---|---|
| "Design a landing page with a distinctive style" | `frontend-design` / `design-taste-frontend` |
| "What palettes/fonts are common for enterprise dashboards?" | `ui-ux-pro-max` |
| "This page feels off — polish it to a professional level" | `impeccable` |
| "Fix the radius, alignment, click areas on this button/card" | `make-interfaces-feel-better` |
| "Add charts / data viz to this page or dashboard" | `bklit-ui` |
| "Check this UI against web guidelines" | `web-design-guidelines` |

**2. Order by name:** `/frontend-design`, `/impeccable`, `/ui-ux-pro-max` …

See each `SKILL.md` `description` field (the ordering code).

---

## Layout

```
latte-skills/
├── assets/banner.svg        ← shop sign (animated hero)
├── README.md  /  README.en.md  /  LICENSE (MIT)
├── frontend/                ← frontend shelf (14 brews)
│   ├── frontend-design/         ☕☕ visual direction
│   ├── design-taste-frontend/   ☕☕ landing/portfolio
│   ├── ui-ux-pro-max/           ☕☕☕ knowledge base (data/ references/ scripts/)
│   ├── impeccable/              ☕☕☕ audit + iteration (reference/ scripts/ · v4.0.4)
│   ├── make-interfaces-feel-better/  ☕ micro-details
│   ├── bklit-ui/                ☕ chart components (SKILL.md + rules/)
│   ├── web-design-guidelines/   ☕ Vercel review
│   └── frontend-skills-hub/     ← routing hub + 7 house blends
├── general/                ← general-purpose shelf
│   └── readme-makeover/        ☕☕ README makeover (SKILL.md + references/)
└── (future: backend/  …)
```

---

## Portability

- `impeccable` / `ui-ux-pro-max` invoke scripts via the `<skill-base-dir>` convention — resolved by the runtime to the skill's install dir, **no hard-coded path**.
- On Windows, use `py -3` if `python`/`python3` isn't on PATH (for `ui-ux-pro-max`).
- `web-design-guidelines` needs network at runtime to fetch Vercel rules.
- `bklit-ui` installs charts via `npx shadcn@latest` — needs network for the @bklit registry and ui.bklit.com docs.
- `impeccable`'s `allowed-tools` / slash commands / hooks are Claude Code concepts; under ZCode it still works as design guidance + `node` script calls.

---

## Roast your own

```bash
cp -r <skill-dir> frontend/<skill-name>/      # onto the shelf
# ensure the SKILL.md frontmatter `name` equals the folder name
git add -A && git commit -m "feat: add <skill-name>" && git push
```

For a new category, just create a top-level folder and register it in the menu and layout above.

---

## Sources & License

Every bean is sourced from an open-source estate and keeps its origin license:

| Bean | License |
|---|---|
| `ui-ux-pro-max` | MIT |
| `impeccable` | Apache 2.0 |
| `bklit-ui` | MIT |
| other upstream beans | see each origin's LICENSE |

The **self-roasted content** — `frontend-skills-hub/` and its 7 blends, the READMEs, the shop sign, and scaffolding — is **MIT-licensed** (see root [LICENSE](LICENSE)). Upstream beans under `frontend/` keep their own licenses.

---

<p align="center"><sub>┈┈┈┈┈┈┈ ☕ ┈┈┈┈┈┈┈</sub></p>
<p align="center"><sub>Enjoyed it? Drop a ⭐ Star · Brewed with ☕ by <a href="https://github.com/wxj-1019">wxj-1019</a></sub></p>
