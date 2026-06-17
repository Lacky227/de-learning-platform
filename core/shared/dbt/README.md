# Shared dbt Project

Minimal dbt skeleton for the Data Engineering Learning Platform.

## Setup

1. Copy the profiles example:

```bash
cp profiles.yml.example ~/.dbt/profiles.yml
```

2. Adjust connection settings to match `core/docker/.env`.

3. Run from this directory:

```bash
dbt debug
dbt run
```

## Usage in Labs

Labs may:
- Add models under `labs/<lab_name>/sql/` and reference this project
- Extend this shared project with lab-specific models
- Create a lab-local dbt project that inherits patterns from here

Do not commit `profiles.yml` with real credentials.
