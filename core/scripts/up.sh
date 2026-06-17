#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOCKER_DIR="${SCRIPT_DIR}/../docker"

if [ $# -eq 0 ]; then
  echo "Usage: $0 <profile> [profile...]"
  echo "Available profiles: postgres, airflow, spark, minio"
  exit 1
fi

PROFILES=""
for profile in "$@"; do
  PROFILES="${PROFILES} --profile ${profile}"
done

cd "${DOCKER_DIR}"

if [ ! -f .env ]; then
  echo "No .env file found. Copying from .env.example..."
  cp .env.example .env
fi

docker compose ${PROFILES} up -d
