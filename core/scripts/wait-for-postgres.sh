#!/usr/bin/env bash
set -euo pipefail

HOST="${POSTGRES_HOST:-localhost}"
PORT="${POSTGRES_PORT:-5432}"
USER="${POSTGRES_USER:-de_user}"
MAX_RETRIES="${MAX_RETRIES:-30}"
RETRY_INTERVAL="${RETRY_INTERVAL:-2}"

echo "Waiting for PostgreSQL at ${HOST}:${PORT}..."

for i in $(seq 1 "${MAX_RETRIES}"); do
  if pg_isready -h "${HOST}" -p "${PORT}" -U "${USER}" > /dev/null 2>&1; then
    echo "PostgreSQL is ready."
    exit 0
  fi
  echo "Attempt ${i}/${MAX_RETRIES} — not ready yet."
  sleep "${RETRY_INTERVAL}"
done

echo "PostgreSQL did not become ready in time."
exit 1
