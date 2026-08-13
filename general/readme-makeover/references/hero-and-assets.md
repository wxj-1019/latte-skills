# Hero & Assets — recipes

Concrete recipes for the visual layer of a README makeover: the banner SVG, badges, and line-ending/license hygiene. The SKILL.md decides *what* to make; this file shows *how*.

## Animated SVG banner

A single `assets/banner.svg`, ~960×280, embedded:

```html
<p align="center">
  <img src="assets/banner.svg" alt="<project> banner" width="960">
</p>
```

### Anatomy
- **viewBox** `0 0 960 300`, no fixed width/height (scales via the `width` attr on `<img>`).
- **Palette**: pick 2–3 from the metaphor. Dark warm (`#1b1410` bg, `#e3b45a` gold accent) reads premium; pick what fits the brand.
- **Three layers**: background gradient → the metaphor object (cup, logo, mascot) → the wordmark.
- **Animation** via SMIL on 1–3 elements only: rising steam, a slow pulse, or a draw-in. Over-animating looks cheap.

### Minimal animated-steam snippet (adapt the shape)
```svg
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 960 300"
     font-family="ui-sans-serif, system-ui, -apple-system, 'Segoe UI', Roboto, sans-serif">
  <defs>
    <linearGradient id="bg" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0" stop-color="#1b1410"/><stop offset="1" stop-color="#0f0c09"/>
    </linearGradient>
    <linearGradient id="gold" x1="0" y1="0" x2="1" y2="0">
      <stop offset="0" stop-color="#f0d28a"/><stop offset="1" stop-color="#c98f2c"/>
    </linearGradient>
  </defs>
  <rect width="960" height="300" rx="22" fill="url(#bg)"/>
  <!-- one animated wisp -->
  <path d="M180,110 q16,-22 0,-44 q-16,-22 0,-44" fill="none"
        stroke="#e8c987" stroke-width="7" stroke-linecap="round">
    <animateTransform attributeName="transform" type="translate"
      values="0,6; 0,-10; 0,6" dur="3.2s" repeatCount="indefinite"/>
    <animate attributeName="opacity" values="0.15;0.9;0.15" dur="3.2s" repeatCount="indefinite"/>
  </path>
  <text x="380" y="160" font-size="74" font-weight="800" fill="url(#gold)">your-project</text>
</svg>
```

### The GitHub rendering caveat (important)
GitHub renders repo SVGs referenced via `<img>`/`![]()`, but it **sanitizes** them. Current behavior:
- Static SVG renders fine.
- **SMIL animations (`<animate>`, `<animateTransform>`) may be frozen** by the sanitizer — your banner shows as a still frame.

So: **design must look great as a still frame.** Treat animation as a progressive-enhancement bonus (it plays in many RSS readers, some IDE previews, and when the SVG is opened directly).

If you need guaranteed animation on GitHub itself, host the SVG externally (a CDN / your own endpoint / a custom shields endpoint) and point `<img src="https://...">` at it — external image SVGs are proxied but SMIL generally survives. Trade-off: an extra dependency/host. Only worth it if motion is core to the brand.

## Badges (shields.io)

Keep to ~5–6, on one line under the hero.

| Kind | URL pattern |
|---|---|
| Static (label-message-color) | `https://img.shields.io/badge/brews-13-%23c98f2c` |
| Last commit | `https://img.shields.io/github/last-commit/<owner>/<repo>` |
| Stars | `https://img.shields.io/github/stars/<owner>/<repo>?style=social` |
| License (manual) | `https://img.shields.io/badge/license-MIT-blue` |

Embed: `[![alt](badge-url)](link-or-#)`. `#` or no link = non-clickable badge (fine for static ones). URL-encode spaces (`%20`) and `#` (`%23`) inside the message.

## Line-ending hygiene (.gitattributes)

Stops the `LF will be replaced by CRLF` noise and keeps the repo LF (cross-platform safe):

```gitattributes
* text=auto eol=lf
*.bat   text eol=crlf
*.cmd   text eol=crlf
*.ps1   text eol=crlf
*.png   binary
*.jpg   binary
*.woff2 binary
```

After adding it, normalize once: `git add --renormalize . && git commit -am "chore: normalize line endings"`.

## LICENSE

For a repo that *aggregates* open-source skills + self-built content, be explicit about scope:

- Root `LICENSE` (e.g. MIT) covers **your** content: README, scaffolding, self-built skills.
- Upstream/borrowed skills under subfolders **keep their own licenses** (MIT, Apache 2.0, …). Say so in the README's Sources & License section so the root LICENSE isn't mistaken for re-licensing them.

MIT copyright line uses the year + a name/handle: `Copyright (c) 2026 <handle>`.
