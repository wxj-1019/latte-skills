# Provenance

- **Origin**: self-authored for latte-skills（自烘），基于 expand/contract、在线 DDL 与分批回填的通行工程实践，结合导入审计建议（引擎差异下沉 references、禁止把单一引擎规则泛化）。
- **Local license**: MIT。
- **Key design decisions**:
  - 破坏性变更加禁裸 DDL：expand/contract 序列 + 兼容窗口 + 延迟删除。
  - 回填三要素：幂等、分批、可恢复。
  - 引擎差异放 `references/engine-notes.md`，主文件保持引擎无关。
- **Evaluation status**: not yet evaluated against the curation gate (see `CURATION.md`).
