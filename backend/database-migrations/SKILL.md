---
name: database-migrations
description: Plan and apply database schema changes that are safe, reversible, and deployable with zero or minimal downtime. Use when adding/renaming/removing columns or tables, changing types or constraints, backfilling data, or when the user asks about migration strategy, expand/contract, or schema rollout order.
license: MIT
---

# Database Migrations

**Core principle:** every schema change is a deployment. Migrations that work on your laptop but break production — locks, downtime, half-written data — are deployment bugs. Plan the rollout, not just the DDL.

## When to use

- Any column/table/constraint/type change on a database that serves real traffic
- Backfills, data repairs, large updates
- Splitting or merging tables, moving data between tables
- Questions about migration ordering or rollback

## Process

### 1. Classify the change

| Change | Safe class | Notes |
|---|---|---|
| Add nullable column | Expensive instant* | Engine-dependent: instant in modern Postgres/MySQL, full rewrite in older versions — check the engine |
| Add non-null column | Breaking without default | Add nullable → backfill → set not null (expand/contract) |
| Rename column | Breaking | Add new column, dual-write, backfill, switch reads, drop old |
| Change type | Usually breaking | Add new column with new type, migrate, switch |
| Drop column/table | Deferred drop | Keep through a compatibility window, drop in a later deploy |
| Add index | Potentially locking | Use `CONCURRENTLY` (Postgres) / online DDL (MySQL 8, Percona) or validate via engine docs |
| Add FK constraint | Potentially locking | Validate existing data first; consider `NOT VALID` + `VALIDATE` (Postgres) |

\* "Instant" claims are engine- and version-specific — verify against the engine's own documentation; do not generalize one engine's rules to another.

### 2. Expand / contract

For every breaking change, use the expand/contract sequence:

1. **Expand**: add the new column/table alongside the old (backward compatible).
2. **Dual-write**: application writes to both old and new.
3. **Backfill**: copy old data to new, idempotently and in batches, with progress checks.
4. **Switch reads**: application reads from new; verify.
5. **Contract**: stop dual-writes, drop the old column in a later deploy — never in the same deploy as the switch.

### 3. Backfills and data changes

- Idempotent: re-runnable without double-applying (row-level predicates, not "run once" flags).
- Batched: chunk by primary key/rowid; single-transaction mega-updates hold locks and bloat WAL.
- Resumable: track last processed key; tolerate interruption.
- Observable: progress rows written periodically; compare counts before/after.
- Never backfill in a migration that also alters the schema if it can be avoided — separate concerns so each can be verified and rolled back independently.

### 4. Rollout and rollback

- Order matters: deploy migrations that are backward compatible with the *previous* app version first; the app deploy must run with both old and new schema for at least one release.
- Prefer additive migrations you can roll forward over destructive ones you must roll back. A rollback of a data-changing migration often cannot restore data — plan the recovery (backup/PITR) before applying.
- Deleted tables/columns: rename to `_deprecated` and drop in a later migration, not the same one.
- Never run `DROP`/`TRUNCATE`-class statements from an automated pipeline without an explicit approval gate.

### 5. Engine differences

Engine behavior (DDL transactions, online DDL, `CONCURRENTLY`, lock semantics) differs sharply. See `references/engine-notes.md` for the Postgres / MySQL / SQLite quick notes — and verify against current official docs before relying on them.

## Verification

- [ ] Every breaking change has an expand/contract plan
- [ ] Backfills are idempotent, batched, and resumable
- [ ] Drop/rename steps are deferred to a later deploy
- [ ] Rollback/recovery path stated before applying data-changing migrations
- [ ] Locking/online-DDL strategy verified against the engine's docs
