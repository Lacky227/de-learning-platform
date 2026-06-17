# Labs

Scenario-based learning modules for Data Engineering practice.

## Status

No labs have been scaffolded yet. Request one by scenario name (e.g. `csv_to_postgres`).

## Lab Structure

Every lab contains:

| File / Folder | Purpose |
|---------------|---------|
| `README.md` | How to run the lab |
| `problem_statement.md` | Exercise requirements (usually provided by another AI) |
| `notes.md` | Your notes, learnings, and observations |
| `datasets/` | Lab-specific input data |
| `src/` | Python, Spark, Airflow code |
| `sql/` | SQL and dbt models |
| `tests/` | Validation and test scripts |

## Progression

See [docs/architecture/lab-progression.md](../docs/architecture/lab-progression.md) for the planned sequence of 12 scenario-based labs.

## Rules

- Business logic is implemented by you, not the platform.
- Reuse `core/shared/` templates and `core/docker/` profiles.
- Start only the Docker profiles your lab requires.
