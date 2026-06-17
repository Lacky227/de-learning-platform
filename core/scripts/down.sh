#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOCKER_DIR="${SCRIPT_DIR}/../docker"

cd "${DOCKER_DIR}"

if [ $# -eq 0 ]; then
  docker compose --profile postgres --profile airflow --profile spark --profile minio down
else
  PROFILES=""
  for profile in "$@"; do
    PROFILES="${PROFILES} --profile ${profile}"
  done
  docker compose ${PROFILES} down
fi
