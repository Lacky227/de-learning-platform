# Shared Spark Jobs

Batch processing jobs for the Data Engineering Learning Platform.

## Start Spark

```bash
./core/scripts/up.sh spark
```

Master UI: http://localhost:8081

## Submit a Job

From inside the spark-master container or with spark-submit pointed at the cluster:

```bash
spark-submit /opt/spark-jobs/_template_job.py
```

## Lab Jobs

Copy `_template_job.py` as a starting point. Implement transformation logic in `labs/<lab_name>/src/`.

Jobs in `jobs/` are mounted at `/opt/spark-jobs` in Spark containers.
