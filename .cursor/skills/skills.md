# Cursor Skills Registry

> Maintained by the platform architect. Updated on bootstrap and when reusable patterns change.

---

## Docker Profiles

- **Location:** `core/docker/docker-compose.yml`
- **Profiles:** `postgres`, `airflow`, `spark`, `minio`
- **Env template:** `core/docker/.env.example`
- **Start:** `./core/scripts/up.sh <profile> [profile...]`
- **Stop:** `./core/scripts/down.sh [profile...]`

## dbt Project Skeleton

- **Location:** `core/shared/dbt/`
- **Project name:** `de_learning`
- **Profile name:** `de_postgres`
- **Profiles example:** `core/shared/dbt/profiles.yml.example`

## Airflow DAG Template

- **Location:** `core/shared/airflow/dags/_template_dag.py`
- **Pattern:** Extract → Transform → Load with PythonOperator stubs
- **Requirements:** `core/shared/airflow/requirements.txt`

## Spark Job Template

- **Location:** `core/shared/spark/jobs/_template_job.py`
- **Pattern:** SparkSession bootstrap with TODO placeholders
- **Config:** `core/shared/spark/conf/spark-defaults.conf`

## Great Expectations Skeleton

- **Location:** `core/shared/great_expectations/`
- **Config:** `great_expectations.yml`
- **Suites:** `expectations/`
- **Checkpoints:** `checkpoints/`

## Python Shared Utils

- **Location:** `core/shared/python/de_shared/`
- **Stubs:** `db.py` (get_connection), `config.py` (get_env)
- **Requirements:** `core/shared/python/requirements.txt`

## Lab Scaffold Checklist

When creating a new lab:

1. Create `labs/<lab_name>/` with standard structure
2. Add `README.md`, `problem_statement.md`, `notes.md`
3. Add empty `src/`, `sql/`, `tests/`, `datasets/` with TODO stubs
4. Add lab-specific Docker profile override only if needed
5. Update `docs/architecture/lab-progression.md` status
6. Update `.cursor/context/context.md` lab count

## Naming Conventions

- Labs: snake_case scenario names (e.g. `csv_to_postgres`)
- Datasets: lowercase snake_case filenames
- Docker profiles: lowercase service names matching the tool
- dbt models: snake_case (standard dbt convention)
- Airflow DAGs: snake_case `dag_id`
