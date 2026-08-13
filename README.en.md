<div align="center">

# ☕ latte-skills

**A personal collection of everyday AI skills · SKILL.md format · organized by category**

Curate, organize, and version high-quality design & engineering skills (SKILL.md) — **clone once, install anywhere.**

[![skills](https://img.shields.io/badge/skills-13-blue)]()
[![platforms](https://img.shields.io/badge/ZCode%20·%20Claude%20Code%20·%20Codex-compatible-success)]()
[![license](https://img.shields.io/badge/license-MIT%20(self--built)-blue)](LICENSE)
[![last commit](https://img.shields.io/github/last-commit/wxj-1019/latte-skills)](https://github.com/wxj-1019/latte-skills/commits)
[![stars](https://img.shields.io/github/stars/wxj-1019/latte-skills?style=social)](https://github.com/wxj-1019/latte-skills)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen)]()

</div>

> 🌐 English · [简体中文](README.md)

A clone-and-distribute personal skill library. Each skill is a folder with a `SKILL.md`; drop it into your AI tool's skills directory and it just works. Currently ships the **frontend design** category (13 skills); more categories coming.

## ✨ Highlights

- 🧩 **Plug-and-play** — self-contained skills; copy into a skills dir, restart the session, done
- 🗂️ **Categorized** — organized by domain (`frontend/`, …) for easy discovery and growth
- 🔌 **Multi-platform** — the SKILL.md format works with ZCode / Claude Code / Codex CLI / Cursor
- 🚚 **Portable** — script calls use the `<skill-base-dir>` convention, no hard-coded machine paths
- 🏷️ **Attribution** — every skill links its upstream repo and license

## 📑 Contents

- [🚀 Quick Start](#-quick-start)
- [📚 Skills Catalog](#-skills-catalog)
- [🧑‍💻 Usage](#-usage)
- [🗂️ Repo Structure](#%EF%B8%8F-repo-structure)
- [🚚 Portability](#-portability)
- [➕ Adding Skills](#-adding-skills)
- [📜 Sources & License](#-sources--license)

---

## 🚀 Quick Start

```bash
# 1. Clone
git clone https://github.com/wxj-1019/latte-skills.git

# 2. Install a skill into your AI tool's skills directory (example: ZCode)
cp -r latte-skills/frontend/frontend-design ~/.zcode/skills/

# 3. Restart the session — the skill now appears and is invocable
```

**Skills directory per tool:**

| Tool | Location |
|---|---|
| ZCode | `~/.zcode/skills/<skill>/` |
| Claude Code | `.claude/skills/<skill>/` or `~/.claude/skills/<skill>/` |
| Codex CLI | `~/.agents/skills/<skill>/` |
| Cursor | `~/.cursor/skills/<skill>/` |

> ⚠️ The **folder name must equal the `name` field** in `SKILL.md`, or some tools won't discover the skill.

---

## 📚 Skills Catalog

### 🎨 frontend/ — Frontend Design (13)

**Upstream originals (community-grade, verified working)**

| Skill | Purpose | Source |
|---|---|---|
| `frontend-design` | Set the visual direction for a new UI; anti-templated | [anthropics/skills](https://github.com/anthropics/skills) |
| `design-taste-frontend` | Landing pages / portfolios; infer direction from brief + brand | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) |
| `ui-ux-pro-max` | 79 styles / 192 palettes / 74 fonts / 119 UX rules; `search.py` by domain | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| `impeccable` | 23-command design audit / polish / live browser iteration (compiled v4.0.4) | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| `make-interfaces-feel-better` | Concentric radius / optical alignment / hit areas / micro-interactions | [jakubkrehel/make-interfaces-feel-better](https://github.com/jakubkrehel/make-interfaces-feel-better) |
| `web-design-guidelines` | Vercel Web Guidelines compliance review (fetches latest rules at runtime) | [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills) |

**Self-built curated (inside `frontend-skills-hub/`)**

| Skill | Purpose |
|---|---|
| `frontend-skills-hub` | Routing hub: scenario → skill mapping + pipelines |
| `theme-factory` | 10 ready-to-use CSS themes |
| `bencium` | Design-constraint toggle (Controlled / Innovative) |
| `accesslint` | WCAG 2.2 AA/AAA accessibility compliance |
| `interface-design` | Design-system persistence, enforced tokens |
| `gsap-skill` | GSAP animation system |
| `vercel-agent-skills` | React best practices + composition patterns (engineering quality) |
| `skill-orchestrator` | Detailed decision tree and pipelines |

<!--
Future categories:
### 🛠️ backend/
### 🧪 general/
-->

---

## 🧑‍💻 Usage

Skills are not apps you click — they're **instruction manuals that prime the AI agent**. Two ways to trigger:

**1. Natural language (recommended)** — just describe the task; the agent matches the skill:

| You say | Skill fires |
|---|---|
| "Design a landing page with a distinctive style" | `frontend-design` / `design-taste-frontend` |
| "What palettes/fonts are common for enterprise dashboards?" | `ui-ux-pro-max` |
| "This page feels off — polish it to a professional level" | `impeccable` |
| "Fix the radius, alignment, and click areas on this button/card" | `make-interfaces-feel-better` |
| "Check this UI against web guidelines" | `web-design-guidelines` |

**2. Slash command (force a specific skill):** `/frontend-design`, `/impeccable`, `/ui-ux-pro-max` …

See each skill's `SKILL.md` `description` field for its exact trigger conditions.

---

## 🗂️ Repo Structure

```
latte-skills/
├── README.md            # 简体中文
├── README.en.md         # English
├── LICENSE              # MIT (covers self-built content)
├── .gitattributes
├── frontend/            # Frontend design skills (13)
│   ├── frontend-design/
│   ├── design-taste-frontend/
│   ├── ui-ux-pro-max/   # SKILL.md + data/ references/ scripts/
│   ├── impeccable/      # SKILL.md + reference/ + scripts/ (compiled v4.0.4)
│   ├── make-interfaces-feel-better/
│   ├── web-design-guidelines/
│   └── frontend-skills-hub/  # curated hub + 7 self-built skills
└── (future: backend/  general/  …)
```

---

## 🚚 Portability

- `impeccable` / `ui-ux-pro-max` invoke scripts via the `<skill-base-dir>` convention — resolved by the runtime to the skill's install dir, **no hard-coded machine path**.
- On Windows, use `py -3` if `python`/`python3` isn't on PATH (for `ui-ux-pro-max` search).
- `web-design-guidelines` needs network at runtime to fetch the Vercel rules.
- `impeccable`'s `allowed-tools` / slash commands / hooks are Claude Code concepts; under ZCode it still works as design guidance + `node` script calls.

---

## ➕ Adding Skills

```bash
# 1. Drop the skill into its category (create the category folder if missing)
cp -r <skill-dir> frontend/<skill-name>/

# 2. Ensure the SKILL.md frontmatter `name` equals the folder name
# 3. Commit
git add -A && git commit -m "feat: add <skill-name>" && git push
```

For a new category, just create a top-level folder and add it to the catalog and structure sections above.

---

## 📜 Sources & License

This repository aggregates open-source skills; each retains its original license:

| Skill | License |
|---|---|
| `ui-ux-pro-max` | MIT |
| `impeccable` | Apache 2.0 |
| other upstream skills | see each upstream repo's LICENSE |

The **self-built content** — `frontend-skills-hub/` and its 7 curated skills, the READMEs, and repo scaffolding — is licensed under the **MIT License** (see root [LICENSE](LICENSE)). Upstream skills under `frontend/` keep their own licenses.

---

<div align="center">

<sub>⭐ If this helps, please consider a Star · Made with ☕ by [wxj-1019](https://github.com/wxj-1019)</sub>

</div>
