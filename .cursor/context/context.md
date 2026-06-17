# Platform Context

## Bootstrap

- **Date:** 2025-06-17
- **Version:** 0.1.0 (initial bootstrap)
- **Lab count:** 0
- **Next recommended lab:** csv_to_postgres

## Docker Profiles

Location: `core/docker/docker-compose.yml`

| Profile | Services |
|---------|----------|
| `postgres` | PostgreSQL 16 |
| `airflow` | Airflow webserver, scheduler, init (+ postgres) |
| `spark` | Spark master, worker |
| `minio` | MinIO object storage |

Start via: `./core/scripts/up.sh <profile> [profile...]`

## Shared Skeletons

| Tool | Path | Notes |
|------|------|-------|
| dbt | `core/shared/dbt/` | Project: `de_learning`, profile: `de_postgres` |
| Airflow | `core/shared/airflow/dags/` | Template: `_template_dag.py` |
| Spark | `core/shared/spark/jobs/` | Template: `_template_job.py` |
| Great Expectations | `core/shared/great_expectations/` | Config stub in `great_expectations.yml` |
| Python utils | `core/shared/python/de_shared/` | Stubs: `db.py`, `config.py` |

## Lab Progression

See `docs/architecture/lab-progression.md` for the full 12-lab sequence.

## Environment

Copy `core/docker/.env.example` to `core/docker/.env` before starting services.
