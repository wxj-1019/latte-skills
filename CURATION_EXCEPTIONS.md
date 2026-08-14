# 行数/描述长度限制例外 · Line/Description-Limit Exceptions

以下技能超过 500 行主文件限制或 1024 字符 description 限制，作为「渐进披露上游包」整体收录。
它们的主 SKILL.md 是路由型入口，细节位于 `references/`、`shared/` 等按需加载文件，因此保留原样。
每次复审时确认仍在合理范围，并更新复审日期。例外同时适用于行数与 description 长度两项检查。

| Skill | 行数（收录时） | 原因 | 固定上游 commit | 收录日期 | 下次复审 |
|---|---|---|---|---|---|
| `claude-api` | ~553 | 路由型知识包；细节在 shared/ 与各语言目录按需加载；description 1120 字符为上游原样 | `f6656c1256d5a8adfa37db9110046ef20bac644c` | 2026-08-14 | 2026-11-14 |
| `design-taste-frontend` | ~1205 | 自包含大技能（上游原样）；无独立 reference 目录可拆分 | Leonxlnx/taste-skill（导入时 main） | 早期导入 | 2026-11-14 |
