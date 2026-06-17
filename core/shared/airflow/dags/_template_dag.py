"""Template DAG — copy and adapt for lab-specific orchestration."""

from datetime import datetime

from airflow import DAG
from airflow.operators.python import PythonOperator


def extract_task():
    # TODO: implement extraction logic
    raise NotImplementedError("Implement extract_task")


def transform_task():
    # TODO: implement transformation logic
    raise NotImplementedError("Implement transform_task")


def load_task():
    # TODO: implement load logic
    raise NotImplementedError("Implement load_task")


with DAG(
    dag_id="template_etl_dag",
    description="Template ETL DAG — replace with lab-specific logic",
    schedule=None,
    start_date=datetime(2024, 1, 1),
    catchup=False,
    tags=["template"],
) as dag:
    extract = PythonOperator(
        task_id="extract",
        python_callable=extract_task,
    )

    transform = PythonOperator(
        task_id="transform",
        python_callable=transform_task,
    )

    load = PythonOperator(
        task_id="load",
        python_callable=load_task,
    )

    extract >> transform >> load
