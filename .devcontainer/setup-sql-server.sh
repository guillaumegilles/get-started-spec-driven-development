#!/usr/bin/env bash
set -euo pipefail

# Starts a local SQL Server container used by the lab when Docker is available.
# This script is intentionally non-blocking for environments where Docker
# cannot be used from the host during devcontainer initialization.

CONTAINER_NAME="sql-localdb-lab"
IMAGE="mcr.microsoft.com/mssql/server:2022-latest"
PORT="1433"
SA_PASSWORD="LabPassw0rd!2026"

log() {
  printf '[setup-sql-server] %s\n' "$1"
}

if ! command -v docker >/dev/null 2>&1; then
  log "Docker not found on host; skipping SQL Server setup."
  exit 0
fi

if ! docker info >/dev/null 2>&1; then
  log "Docker daemon unavailable; skipping SQL Server setup."
  exit 0
fi

if docker ps -a --format '{{.Names}}' | grep -Fxq "$CONTAINER_NAME"; then
  if docker ps --format '{{.Names}}' | grep -Fxq "$CONTAINER_NAME"; then
    log "Container '$CONTAINER_NAME' already running."
    exit 0
  fi

  log "Starting existing container '$CONTAINER_NAME'."
  docker start "$CONTAINER_NAME" >/dev/null
  log "Container '$CONTAINER_NAME' started on localhost:$PORT."
  exit 0
fi

log "Creating SQL Server container '$CONTAINER_NAME'."
docker run -d \
  --name "$CONTAINER_NAME" \
  -e ACCEPT_EULA=Y \
  -e MSSQL_SA_PASSWORD="$SA_PASSWORD" \
  -p "$PORT:1433" \
  "$IMAGE" >/dev/null

log "Container '$CONTAINER_NAME' created and started on localhost:$PORT."
