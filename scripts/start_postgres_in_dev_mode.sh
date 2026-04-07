#!/bin/bash

docker compose -f docker-compose.yml down omotes_postgres_db
docker compose -f docker-compose.yml up --wait omotes_postgres_db_dev
