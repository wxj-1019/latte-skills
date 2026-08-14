---
name: architecture-decision-records
description: Record architecture decisions as concise, evidence-based ADRs. Use when choosing a library, framework, database, deployment model, or API design; when a decision has long-term or hard-to-reverse consequences; or when the user asks to document why something was built a certain way. Produces ADR files with context, decision, consequences, and alternatives with rejection reasons.
license: MIT
---

# Architecture Decision Records

**Core principle:** a decision that is not written down did not happen. ADRs capture *why*, not just what.

## When to use

- Selecting a library, framework, database, or service
- Deployment, migration, or API design decisions
- Any choice that will be expensive or hard to reverse
- Recording a decision after the fact (e.g., before a review or handover)

## Evidence first

Before writing anything, gather evidence from the repository and history:

1. Read existing ADRs (find the repo's own convention — `docs/adr/`, `docs/decisions/`, etc. — and reuse it instead of imposing a new path).
2. Check docs, config, CI workflows, and commit history for constraints and past decisions.
3. If a needed fact (alternatives considered, historical context, stakeholder constraints) cannot be found in the repo, **ask the user** — never fabricate alternatives or retroactively invent decision reasons.

## ADR format

Number sequentially with 4 digits and a title slug, following the repo's convention. If none exists, propose `docs/adr/adr-NNNN-title-slug.md`:

```md
---
title: "ADR-NNNN: [Decision Title]"
status: "Proposed"
date: "YYYY-MM-DD"
supersedes: ""
superseded_by: ""
---

# ADR-NNNN: [Decision Title]

## Status

**Proposed** | Accepted | Rejected | Superseded | Deprecated

## Context

[The problem, technical constraints, business requirements, and what forces shaped this decision. Cite evidence where it exists.]

## Decision

[The chosen option and the rationale for it.]

## Consequences

### Positive
- **POS-001**: [benefit]

### Negative
- **NEG-001**: [trade-off, added complexity, risk]

## Alternatives Considered

### [Alternative name]
- **ALT-001**: **Description**: [what it is]
- **ALT-002**: **Rejection Reason**: [why not chosen]

## Implementation Notes

- **IMP-001**: [key implementation considerations, migration or rollout, success criteria]

## References

- **REF-001**: [related ADRs, docs, standards]
```

Rules:

- Every alternative that was genuinely considered must be recorded with its rejection reason; if you do not know which alternatives were considered, ask instead of guessing.
- Both positive and negative consequences are mandatory — an ADR with only benefits is a sales pitch, not a record.
- Update status and `superseded_by` on the old ADR when a decision is reversed or replaced; do not silently edit history.
- Keep each ADR to one decision. Two decisions = two ADRs.

## Verification

- [ ] Context is backed by repo evidence or explicit user input
- [ ] At least one alternative with a rejection reason
- [ ] Both positive and negative consequences present
- [ ] Status field set; supersedes/superseded_by handled
- [ ] Follows the repo's existing ADR convention
