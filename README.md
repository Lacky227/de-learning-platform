# PlayGround DE — Data Engineering Learning Platform

A production-like monorepo for practical Data Engineering training. This is a **learning environment**, not a product — infrastructure and scaffolding are provided; **business logic is implemented by you** in `labs/`.

## Quick Start

1. Copy environment variables:

```bash
cp core/docker/.env.example core/docker/.env
```

2. Start services on demand using Docker Compose profiles:

```bash
# PostgreSQL only
./core/scripts/up.sh postgres

# PostgreSQL + Airflow
./core/scripts/up.sh postgres airflow

# All profiles
./core/scripts/up.sh postgres airflow spark minio
```

3. Stop services:

```bash
./core/scripts/down.sh
```

## Directory Map

| Path | Purpose |
|------|---------|
| `core/docker/` | Docker Compose profiles (postgres, airflow, spark, minio) |
| `core/shared/` | Shared tool skeletons (dbt, Airflow, Spark, Great Expectations) |
| `core/scripts/` | Helper scripts for starting/stopping services |
| `labs/` | Scenario-based learning modules (you implement the logic) |
| `datasets/` | Shared input data (csv, json, parquet) |
| `docs/` | Architecture, concepts, and cheatsheets |
| `playground/` | Free-form experiments |

See [docs/architecture/overview.md](docs/architecture/overview.md) for the full platform architecture.

## Docker Profiles

| Profile | Service | Default Port |
|---------|---------|--------------|
| `postgres` | PostgreSQL 16 | 5432 |
| `airflow` | Apache Airflow 2.10 (LocalExecutor) | 8080 |
| `spark` | Apache Spark 3.5 (standalone) | 8081 (master UI) |
| `minio` | MinIO (S3-compatible) | 9000 (API), 9001 (console) |

Never assume the full stack is running. Start only the profiles your lab requires.

## Labs

Labs are scenario-based (e.g. `csv_to_postgres`, `dbt_transformations`), not tool-based. Each lab extends previous knowledge and reuses core infrastructure.

No labs are scaffolded yet. See [labs/README.md](labs/README.md) and [docs/architecture/lab-progression.md](docs/architecture/lab-progression.md) for the planned sequence.

## Philosophy

- Learn through realistic scenarios, not isolated technologies.
- Infrastructure is standardized; business logic is yours to implement.
- Prefer boring, conventional, production-proven patterns.
