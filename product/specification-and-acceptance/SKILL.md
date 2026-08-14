---
name: specification-and-acceptance
description: Create a clear, AI-ready specification with traceable acceptance criteria before implementing any multi-step feature, refactor, or new system. Use when requirements are vague, when starting a new project or feature, when the user asks for a spec/PRD, or when scope must be pinned down before coding. Produces numbered requirements (REQ/SEC/CON), Given-When-Then acceptance criteria, and a requirement-to-test traceability matrix.
license: MIT
---

# Specification and Acceptance

**Core principle:** pin down requirements, constraints, and acceptance criteria *before* implementation. A wish is not a requirement until it is verifiable.

## When to use

- New feature, module, or project that spans more than a few files
- Requirements are vague or conflicting
- Scope needs to be agreed before coding starts
- Any refactor with behavioral expectations

## Process

### 1. Clarify before writing

Ask one focused question at a time when something is genuinely ambiguous. Never invent requirements:

- What must it do (must), what should it do (should), what is explicitly out of scope?
- Who is the audience / what are the actors?
- What are the non-functional requirements (performance, security, availability, data retention, accessibility)?
- What are the failure and edge cases the user cares about?

Do not expand scope on your own; new requirements must come from the user or be flagged as open questions.

### 2. Write the spec

Write to the repository's existing docs convention if one exists; otherwise propose a single file such as `docs/specs/<feature>.md`. Keep the spec self-contained and unambiguous:

```md
# [Feature] Specification

## Purpose & Scope
[Goal, audience, in-scope / out-of-scope]

## Definitions
[All acronyms and domain terms]

## Requirements
- **REQ-001**: [behavioral requirement]
- **SEC-001**: [security requirement]
- **CON-001**: [constraint — tech, budget, regulation]
- **NFR-001**: [non-functional requirement — performance, availability, etc.]

## Interfaces & Data Contracts
[APIs, schemas, integration points]

## Acceptance Criteria
- **AC-001**: Given [context], When [action], Then [expected outcome]

## Examples & Edge Cases
[concrete inputs/outputs, failure cases]

## Dependencies
[external systems, platforms, compliance — the *what*, not specific package versions unless they are architectural constraints]
```

Rules:

- Use precise language; distinguish requirements from recommendations.
- Number everything — `REQ-` / `SEC-` / `CON-` / `NFR-` / `AC-` + sequential IDs — so tests and reviews can reference them.
- Every acceptance criterion must be observable and testable. "Works well" is not an acceptance criterion.

### 3. Build the traceability matrix

Before implementation, map every requirement to at least one acceptance criterion and one planned test level (unit / integration / e2e / manual):

```md
| Requirement | Acceptance | Test level | Test location |
|---|---|---|---|
| REQ-001 | AC-001, AC-002 | integration | tests/api/orders.test.ts |
| SEC-001 | AC-003 | integration | tests/security/auth.test.ts |
```

Any requirement without a mapped test is a gap — either add the test or negotiate the requirement down.

### 4. Freeze and gate

- Present the spec and the traceability matrix to the user for approval before implementation.
- Reject scope creep during implementation: new behavior = new REQ + AC + test row, not a silent addition.

## Verification

- [ ] Every requirement has an ID and is verifiable
- [ ] Every AC uses Given-When-Then or an equivalent observable form
- [ ] Traceability matrix has no unmapped rows
- [ ] Non-functional requirements are explicit, not implied
- [ ] User approved the spec before coding started
