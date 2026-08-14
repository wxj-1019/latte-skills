---
name: api-contract-design
description: Design HTTP API contracts that are stable, evolvable, and testable. Use when defining a new endpoint or API surface, when integrating frontend/backend or service-to-service, when the user asks about REST design, OpenAPI, versioning, pagination, error handling, or idempotency — before writing any endpoint implementation.
license: MIT
---

# API Contract Design

**Core principle:** the contract is the product. Design the interface first, implementation second. An API that "works" but cannot evolve without breaking consumers is a bug, not a feature.

## Process

### 1. Contract first

Before implementing, write the contract as OpenAPI (or the team's established schema language). The contract must specify:

- Paths, methods, request/response schemas
- Status codes per operation (including the error cases)
- Auth and rate-limit expectations
- Pagination, filtering, and sorting conventions

Then get the contract reviewed before code is written. Implementation follows the contract, not the other way around.

### 2. Error model

- Use a consistent error envelope: `{ "error": { "code": "...", "message": "...", "details": [...] } }`.
- Machine-readable `code` (stable enum, e.g. `rate_limited`, `invalid_request`) plus human-readable `message`.
- Map HTTP status correctly: 400 malformed, 401 unauthenticated, 403 authenticated but not authorized, 404 missing (do not leak existence where it matters), 409 conflict, 422 semantic validation, 429 rate limited, 500 unexpected (no stack traces or internal details).
- Document error responses in the contract — an undocumented error is an untested behavior.

### 3. Idempotency and safety

- `GET` / `HEAD` / `OPTIONS` must be safe; `PUT` / `DELETE` idempotent; `POST` is neither — provide `Idempotency-Key` for payment/order-style POSTs and document the replay behavior.
- Accept idempotency keys on retryable mutations and store the original response for replay.

### 4. Pagination, filtering, sorting

- Paginate all list endpoints from day one — adding pagination later breaks consumers.
- Default to keyset (cursor) pagination for append-heavy or large datasets; document why if you choose offset.
- Filter/sort parameters are a contract too: name them (`created_at`, `status`), validate them against an allowlist (they cannot be parameterized like values), and document their semantics.

### 5. Versioning and evolution

- Decide the versioning strategy up front: URI versioning (`/v1/...`) for coarse breaks, content negotiation for fine-grained, or backward-compatible-only evolution for internal APIs.
- Evolution rules (backward compatible by default):
  - Adding an optional request field or response field: compatible.
  - Adding a required request field or changing a field's meaning/type: breaking.
  - Removing/renaming anything: breaking.
  - Widening a response enum: compatible; narrowing one: breaking.
- Deprecations: announce with a sunset date, keep the old version functional through the migration window, monitor usage, then remove on schedule.

### 6. Contract tests

- Treat the contract as executable: validate responses against the schema in CI (e.g., schema validation on integration tests).
- Add a compatibility check: "old client against new server" test fixture for every field you add/remove/rename.
- Never trust "own database data" as already-validated: validate at the boundary like any other input — databases hold legacy, migrated, and corrupted rows.

## Common rationalizations to reject

| Excuse | Reality |
|--------|---------|
| "We'll add pagination later" | Retrofitting pagination breaks every existing consumer |
| "The client controls validation" | The server is the boundary; clients are hostile |
| "Adding a field is always safe" | Only optional response fields are safe; required fields break clients |
| "Error messages can be free-form" | Consumers parse errors; structure them from day one |
| "It's an internal API, don't overthink" | Internal APIs outlive their first consumer and get reused in ways you can't predict |

## Verification

- [ ] Contract written before implementation
- [ ] Error envelope + status codes documented per operation
- [ ] Idempotency strategy stated for mutations
- [ ] Pagination on every list endpoint
- [ ] Versioning/evolution policy stated; deprecation has a sunset date
- [ ] Contract tests in CI, including old-client/new-server compatibility fixtures
