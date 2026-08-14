---
name: security-and-hardening
description: Threat-model-driven security review and hardening for application code. Use when writing or reviewing features that handle user input, authentication, authorization, secrets, file uploads, or external integrations — or when the user asks for a security review, security hardening, or a vulnerability check.
license: MIT
---

# Security and Hardening

**Core principle:** treat every external input as hostile, every secret as sacred, and every authorization check as mandatory. Security is a property of design, not a checklist applied at the end.

## When to use

- New features touching auth, input, data, files, or third-party services
- Pre-merge security review requests
- Dependency updates and new library additions
- Any code path that handles money, PII, or credentials

## Process

### 1. Threat model first

Before hardening, answer these questions in writing:

1. **Trust boundaries** — where does untrusted data enter the system? (HTTP requests, file uploads, webhooks, CLI args, LLM output)
2. **Assets** — what is valuable enough to attack? (user data, secrets, billing, admin functions)
3. **Abuse cases** — write one abuse case per boundary: "attacker submits X hoping Y happens"
4. **Run STRIDE** across each boundary: Spoofing, Tampering, Repudiation, Information disclosure, Denial of service, Elevation of privilege

If you cannot name the trust boundaries for a feature, you are not ready to secure it.

### 2. Apply the three-tier rules

| Tier | Rule |
|------|------|
| **Always** | Parameterized queries; HTTPS; output encoding; server-side authorization on every endpoint; secrets out of code and logs |
| **Ask first** | New auth flows; file upload endpoints; elevated permissions; any use of `eval`/`exec` with non-constant input; disabling a security control |
| **Never** | Commit secrets; trust client-side validation; store sessions in localStorage; log credentials, tokens, or full PII; use MD5/SHA1 for passwords |

### 3. Verify each finding

State each finding with: location, severity (Critical / High / Medium / Low), a concrete exploit path, and the fix. Never report "hardening opportunities" without a reproducible or clearly reasoned exploit path.

## Injection and input handling

- **SQL**: parameterized queries or an ORM everywhere — including order-by/limit values that cannot be parameterized; map user input to an allowlist.
- **XSS**: encode on output at the boundary (HTML, attribute, JS, URL contexts). For React, never use `dangerouslySetInnerHTML` with user data; sanitize server-side if rich text is required.
- **Command injection**: avoid shelling out; if unavoidable, use argument arrays, never string interpolation into a shell.
- **Path traversal**: resolve and verify the canonical path stays inside the allowed root before reading/writing files.
- **SSRF**: when fetching user-supplied URLs, resolve DNS first and block private/link-local ranges; or require an allowlist of hosts.

## Authentication and authorization

- Use established libraries (bcrypt/argon2 for passwords, battle-tested OAuth/OIDC flows); never implement crypto primitives yourself.
- **Authorization must be enforced server-side on every endpoint**, not just hidden in the UI.
- Objects accessed by ID must be checked for ownership or role — "the ID is unguessable" is not access control.
- JWT: verify signature, issuer, audience, and expiry; keep lifetimes short; prefer opaque server-side sessions when revocation matters.

## Secrets management

- Detect secrets with real scanners — `gitleaks`, `trufflehog` — in pre-commit and CI. Do not treat `git diff | grep password` as a secrets check.
- Secrets come from environment variables, a secret manager, or injected files — never from source, configs in the repo, or commit history.
- If a secret is committed: rotate it. Rewriting history does not un-leak a secret.

## Supply chain

- Lock dependencies (lockfiles), pin CI to trusted registries, and review new dependencies: maintenance status, provenance, and install scripts.
- Triage audit findings by **reachability** — a vulnerable transitive dependency that is never imported into a code path that processes untrusted input is lower priority than one on the request path.
- Reject or block dependency postinstall scripts by default in CI.

## File uploads

- Validate content, not just `Content-Type` or file extension — both are client-controlled. Sniff or parse the file server-side.
- Store uploads outside the web root or serve through a controller that forces download/neutral Content-Type.
- Limit size, count, and filenames (sanitize; never use user filename as a path).
- Scan uploaded files for malware when the app accepts documents from end users.

## LLM and AI-specific concerns

- Treat model output as untrusted data: it flows through the same encoding and authorization checks as user input.
- Never send secrets, tokens, or unrelated customer data in prompts to external models.
- Constrain agent tool permissions to the minimum the task needs; log and review tool calls that touch secrets or production.

## Verification

Before claiming a review is complete:

- [ ] Every external input path has a named validation/encoding strategy
- [ ] Every endpoint has server-side authorization
- [ ] No secrets in the diff (ran a real scanner)
- [ ] Dependency changes reviewed and triaged by reachability
- [ ] Findings written with location + severity + exploit path + fix

## Common rationalizations to reject

| Excuse | Reality |
|--------|---------|
| "We'll secure it later" | Retrofitting security is 10x harder than building it in |
| "It's an internal tool" | Internal tools are a favorite pivot point |
| "The data isn't sensitive" | PII volume and token replay say otherwise; assume the worst |
| "Tests pass so it's fine" | Tests rarely encode abuse cases |
| "Nobody would bother attacking this" | Automated scanners don't discriminate |
