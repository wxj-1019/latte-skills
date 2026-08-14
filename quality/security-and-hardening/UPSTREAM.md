# Provenance

- **Origin**: rewritten for latte-skills, synthesized from `addyosmani/agent-skills` `security-and-hardening` (MIT, commit `be42637`) with corrections from the import audit.
- **Local license**: MIT.
- **Key differences from the Addy source**:
  - Removed Node/Express/React-specific examples in favor of framework-neutral patterns.
  - Replaced the `git diff` keyword-based secrets "detection" with real scanners (gitleaks/trufflehog).
  - Upload validation no longer claims MIME/size checks are sufficient.
  - Removed fixed bcrypt rounds and CORS `localhost` fallback recommendations.
  - Added LLM-specific guidance (untrusted model output, prompts, tool permissions).
- **Evaluation status**: not yet evaluated against the curation gate (see `CURATION.md`).
