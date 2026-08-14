# Upstream Provenance

- **Source repo**: https://github.com/obra/superpowers
- **Skill path (upstream)**: `skills/verification-before-completion/`
- **Pinned commit**: `b36e0829c6d0140e93cfef2ca599b1b07d4a7797` (release v6.3.0)
- **Imported on**: 2026-08-14
- **Upstream license**: MIT
- **Local modifications**:
  - Added `license: MIT` frontmatter field.
  - Softened the "same message fresh run" rule to "complete evidence from after the last relevant change", to remain correct when the host runs verification in a separate message/toolcall.
- **Evaluation status**: pilot run completed (iteration-1, 2026-08-14). Rules execute coherently when activated, but the pilot methodology forced activation and induced baseline verification, so trigger precision and marginal value remain unmeasured. See `evals/results/iteration-1/verification-before-completion/grading.json`.
