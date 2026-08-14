---
name: code-review-and-quality
description: Structured code review and code-quality enforcement. Use when reviewing a diff or PR, when asked "review this code", when preparing code for review, or when the user wants a quality gate before merge. Also applies to receiving and acting on review feedback.
license: MIT
---

# Code Review and Quality

**Core principle:** a review is evidence-based and findings-first. Every finding must name a concrete risk or defect; opinion must be labeled as opinion.

## Review axes

For each diff, walk these five axes:

1. **Correctness** — does it do what it claims? Edge cases, error paths, race conditions, off-by-ones.
2. **Security** — trust boundaries crossed? See `security-and-hardening` for input, auth, secrets, uploads.
3. **Performance** — anything measurably wasteful on a hot path? Only flag with reasoning or evidence (see `performance-optimization`).
4. **Maintainability** — naming, structure, duplication, dead code, missing tests. Judge against the surrounding codebase, not personal style.
5. **Tests** — do tests cover the new behavior and the failure modes? Would the tests catch a regression?

## Severity levels (single shared vocabulary)

| Level | Meaning |
|-------|---------|
| **Critical** | Security hole, data loss/corruption, or crash on a main path — must block merge |
| **Important** | Likely bug, broken contract, or significant quality gap — should block unless justified |
| **Minor** | Improvable clarity, naming, minor duplication — merge allowed, fix in follow-up |
| **Nit** | Optional style taste — explicitly labeled opinion |

Use this vocabulary in both reviewing and receiving reviews. Don't invent parallel scales.

## Review process

1. **Read the tests first** — they describe intended behavior faster than the diff.
2. **Check it runs** — if the project has a test/build/lint command, run it; report the result, don't assume.
3. **Read the diff in full** — every changed line; skimmed reviews produce drive-by findings.
4. **Findings-first format** — write findings with location + severity + concrete risk + suggested fix. Start with the critical path, not formatting.
5. **Say what's good** briefly — reviewers who only emit complaints erode trust; one line is enough.

## Change sizing

Guidance, not law:

- Prefer small, single-purpose changes; a change touching many unrelated subsystems is a warning sign to split.
- Large mechanical changes (renames, format runs) are fine if isolated from behavior changes — but review them for accidental edits.
- There is no universal line budget; judge by reviewability: can a reviewer understand the intent in one sitting?

## When receiving review

- Respond to every finding: fix, rebut with evidence, or agree and defer — silence is the failure mode.
- A rebuttal needs a reason ("this is covered by the auth middleware in `middleware/session.ts`"), not a preference.
- If the reviewer misunderstands the code, the code or the tests may be unclear — treat that as a maintainability finding on yourself.

## Rationalizations to reject

| Excuse | Reality |
|--------|---------|
| "It's just a quick fix" | Quick fixes are the most common source of regressions |
| "Tests will come later" | Untested behavior has no contract; later usually means never |
| "The diff is too big to review" | Then it is too big to merge — split it |
| "Style is subjective, skip it" | Only for Nits; consistency is a real maintainability property |

## Verification

- [ ] Findings list written with severity and evidence
- [ ] Test/build command result reported (or reason given if not runnable)
- [ ] Critical findings have a concrete exploit/bug path
- [ ] Every received review finding got a response
