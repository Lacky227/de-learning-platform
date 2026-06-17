# Lab Progression

Planned scenario-based lab sequence. Each lab represents a realistic business scenario. Exercise content is provided separately via `problem_statement.md` when a lab is scaffolded.

## Sequence

| # | Lab | Scenario | Prerequisites | Profiles |
|---|-----|----------|---------------|----------|
| 1 | `csv_to_postgres` | Load CSV files into PostgreSQL | — | `postgres` |
| 2 | `rest_api_to_raw` | Ingest data from a REST API into a raw layer | csv_to_postgres | `postgres` |
| 3 | `incremental_loading` | Incrementally load changing data | rest_api_to_raw | `postgres` |
| 4 | `dwh_modeling` | Design staging and warehouse schemas | incremental_loading | `postgres` |
| 5 | `dbt_transformations` | Transform raw data into analytics-ready models with dbt | dwh_modeling | `postgres` |
| 6 | `data_quality` | Validate data with Great Expectations | dbt_transformations | `postgres` |
| 7 | `airflow_orchestration` | Orchestrate pipelines with Airflow | data_quality | `postgres`, `airflow` |
| 8 | `scd_and_history` | Track slowly changing dimensions and history | airflow_orchestration | `postgres`, `airflow` |
| 9 | `analytics_marts` | Build consumption-ready analytics marts | scd_and_history | `postgres` |
| 10 | `spark_batch_processing` | Process data at scale with Spark | analytics_marts | `spark` |
| 11 | `large_dataset_processing` | Handle large datasets with object storage | spark_batch_processing | `spark`, `minio` |
| 12 | `end_to_end_platform` | Full pipeline from ingestion to analytics | all previous | `postgres`, `airflow`, `spark`, `minio` |

## Status

No labs have been scaffolded yet. Request a lab by scenario name to generate its structure.

## Adding a New Lab

When scaffolding a lab, the platform architect will:

1. Create the standard lab directory structure
2. Add a `README.md` with run instructions
3. Add an empty `problem_statement.md` placeholder
4. Add an empty `notes.md` for learner observations
5. Create TODO stubs in `src/`, `sql/`, and `tests/`
6. Add lab-specific Docker profile overrides only if needed

Business logic is never pre-implemented.
