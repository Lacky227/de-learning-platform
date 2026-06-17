# Shared Great Expectations Configuration

Minimal GE skeleton for data quality labs.

## Setup

```bash
cd core/shared/great_expectations
great_expectations init  # if starting fresh; config stub already provided
```

## Usage in Labs

1. Add expectation suites under `expectations/`
2. Configure checkpoints under `checkpoints/`
3. Point datasources at PostgreSQL or files as needed

See the `data_quality` lab (when scaffolded) for a full walkthrough.
