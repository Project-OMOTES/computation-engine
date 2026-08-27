#!/usr/bin/env bash
set -e

docker compose -f docker-compose.yml -f docker-compose.override.dev.yml up --no-deps omotes-deploy-optimizer --build