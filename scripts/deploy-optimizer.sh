#!/usr/bin/env bash
set -e

# Optional first argument overrides OPTIMIZER_WORKER_VERSION from .env
if [[ -n "$1" ]]; then
  export OPTIMIZER_WORKER_VERSION="$1"
fi

docker compose up --no-deps omotes-deploy-optimizer