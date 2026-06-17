# Platform Initialization Rules

When new repository or lab setup is required:

## 1. Always generate base structure
- core/
- labs/
- docs/
- datasets/
- playground/

## 2. Always ensure Docker profiles exist
- postgres
- airflow
- spark
- optional lab profiles

## 3. Always scaffold new lab with:
- README.md
- problem_statement.md
- notes.md
- src/
- sql/
- tests/

## 4. Never implement business logic
Only scaffolding and TODO placeholders are allowed.