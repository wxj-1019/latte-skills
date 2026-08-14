# Upstream Provenance

- **Source repo**: https://github.com/addyosmani/agent-skills
- **Skill path (upstream)**: `skills/performance-optimization/` + repo-level `references/performance-checklist.md`
- **Pinned commit**: `be42637c5af93fdc8526b68ec2f2651b930f316c`
- **Imported on**: 2026-08-14
- **Upstream license**: MIT
- **Local modifications**:
  - Added `license: MIT` frontmatter field.
  - Made the skill self-contained: moved `references/performance-checklist.md` inside the skill and fixed the relative link.
- **Known caveats (from import audit)**:
  - The fixed performance "budget" in the checklist is an example, not a universal SLA — adjust to project requirements.
  - RUM (Real User Monitoring) guidance assumes such a system exists; treat as optional.
- **Evaluation status**: not yet evaluated against the curation gate (see `CURATION.md`).
