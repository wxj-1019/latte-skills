# Provenance

- **Origin**: self-authored for latte-skills（自烘），综合 OpenAPI Specification（Apache-2.0）与 Microsoft API Guidelines（CC-BY-4.0）的设计原则，以及导入审计中对 API 设计技能的修正意见。
- **Local license**: MIT。
- **Key design decisions**:
  - 契约优先 + 可执行契约（schema validation、old-client/new-server 兼容夹具）。
  - 修正「数据库数据可信/无需验证」错误假设：边界一律验证。
  - 错误模型、幂等、分页、版本化/弃用为必写章节。
- **Evaluation status**: not yet evaluated against the curation gate (see `CURATION.md`).
