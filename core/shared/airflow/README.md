# Shared Airflow Configuration

DAGs in `dags/` are mounted into the Airflow container when the `airflow` profile is running.

## Start Airflow

```bash
./core/scripts/up.sh postgres airflow
```

Access the UI at http://localhost:8080 (default credentials: admin / admin).

## Template DAG

Copy `_template_dag.py` as a starting point for lab-specific DAGs. Do not implement business logic in the template — use it as a skeleton only.

## Lab-Specific DAGs

Place lab DAGs in `labs/<lab_name>/src/dags/` and either:
- Symlink into this directory, or
- Add an additional volume mount in a lab-specific compose override
