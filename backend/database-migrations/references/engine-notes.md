# Engine Notes（速查，实施前务必对照当前官方文档）

不同引擎的 DDL 事务、在线变更与锁行为差异巨大。以下为方向性速查，不替代官方文档。

## PostgreSQL

- DDL 是事务性的；一条迁移脚本可以回滚。
- `ADD COLUMN` 带常量默认值：PG11+ 多数情况为即时（元数据级），旧版本为全表重写——按版本核实。
- `CREATE INDEX CONCURRENTLY` 避免写锁，但**不能在事务块内运行**，失败会留下 invalid 索引需清理。
- 加 NOT NULL：`ADD CONSTRAINT ... NOT VALID` → 校验 → `VALIDATE CONSTRAINT`，避免长时间锁。
- 外键约束同理可 `NOT VALID` + `VALIDATE`。
- `ALTER COLUMN TYPE` 通常重写表；`USING` 子句决定转换。
- 大表 VACUUM/ANALYZE 后验证查询计划变化。

## MySQL / MariaDB

- DDL 在 8.0 为原子（InnoDB），但 DDL 期间锁定行为复杂：`ALGORITHM=INPLACE, LOCK=NONE` 是目标，不行则回退 `COPY`（会重写+锁）。
- MariaDB 有 `INSTANT` 变更（加列/改默认值等），旧版本重写。
- 在线加索引：`ALTER TABLE ... ADD INDEX ..., ALGORITHM=INPLACE, LOCK=NONE`；大表慎用默认值。
- `pt-online-schema-change`（Percona）是触发器方案，可在线改表，但需触发器开销与从库评估。
- 外键约束会让某些 INPLACE 操作退化——评估前后查看 `performance_schema` 与文档。

## SQLite

- DDL 是事务性的（同事务内可回滚）。
- `ALTER TABLE ADD COLUMN` 不能带非常量默认值、不能是 PRIMARY KEY/UNIQUE（老版本）；复杂变更走「新建表 → 拷贝 → 重命名」模式，并遵守外键开关（`PRAGMA foreign_keys`）顺序。
- 写锁是库级：大迁移意味着长写锁；对 SQLite 优先批量小事务。
- `PRAGMA user_version` 是事实上的迁移版本号惯例。

## 通用红线

- 生产 DDL 前先检查：锁等待上限（lock_timeout）、语句超时（statement_timeout）、复制/从库延迟。
- 大表操作先小表演练；记录预计行数与耗时。
- 任何引擎都不要在迁移里跑无界 UPDATE/DELETE——分批 + 谓词。
