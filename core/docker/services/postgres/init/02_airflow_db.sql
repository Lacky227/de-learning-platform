-- Create dedicated database for Airflow metadata.
CREATE DATABASE airflow;
GRANT ALL PRIVILEGES ON DATABASE airflow TO de_user;
