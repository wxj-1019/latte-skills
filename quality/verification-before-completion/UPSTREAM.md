# Upstream Provenance

- **Source repo**: https://github.com/obra/superpowers
- **Skill path (upstream)**: `skills/verification-before-completion/`
- **Pinned commit**: `b36e0829c6d0140e93cfef2ca599b1b07d4a7797` (release v6.3.0)
- **Imported on**: 2026-08-14
- **Upstream license**: MIT
- **Local modifications**:
  - Added `license: MIT` frontmatter field.
  - Softened the "same message fresh run" rule to "complete evidence from after the last relevant change", to remain correct when the host runs verification in a separate message/toolcall.
- **Evaluation status**: iteration-2 passed the trigger gate (2026-08-14): positive recall 3/3, creative negative 0/3, near-miss negative 1/3 (0.33, below threshold — flagged). Overall trigger accuracy 8/9. Marginal-value delta vs baseline remains unmeasurable on simple tasks; needs harder cases. See `evals/results/iteration-2/verification-before-completion/grading.json`.
