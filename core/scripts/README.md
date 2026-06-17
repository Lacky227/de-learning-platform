# Helper Scripts

Thin wrappers around Docker Compose for the learning platform.

## up.sh

Start one or more profiles:

```bash
./core/scripts/up.sh postgres
./core/scripts/up.sh postgres airflow
./core/scripts/up.sh postgres airflow spark minio
```

Creates `.env` from `.env.example` if missing.

## down.sh

Stop services:

```bash
./core/scripts/down.sh              # stop all profiles
./core/scripts/down.sh postgres     # stop specific profiles
```

## wait-for-postgres.sh

Block until PostgreSQL accepts connections. Useful in lab setup scripts.

```bash
export POSTGRES_HOST=localhost POSTGRES_PORT=5432 POSTGRES_USER=de_user
./core/scripts/wait-for-postgres.sh
```

Requires `pg_isready` (postgresql-client) on the host.
