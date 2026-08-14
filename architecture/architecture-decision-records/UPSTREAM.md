# Provenance

- **Origin**: rewritten for latte-skills from `github/awesome-copilot` `create-architectural-decision-record` (MIT, commit `782200e3a4f7c17248974ac4a63284c868bc290f`).
- **Local license**: MIT.
- **Key differences from the source**:
  - Removed Copilot `${input:...}` placeholders and the forced `/docs/adr/` path.
  - Added an evidence-first rule: extract context/constraints from repo history and existing ADRs; never fabricate alternatives or historical rationale; ask the user when evidence is absent.
  - Added status-lifecycle rules (supersede instead of silent edit) and one-decision-per-ADR.
- **Evaluation status**: not yet evaluated against the curation gate (see `CURATION.md`).
