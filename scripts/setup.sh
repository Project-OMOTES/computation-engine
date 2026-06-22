#!/bin/bash

# optionally set env file and docker compose file from arguments
ENV_FILE=${1:-"./.env"}
DOCKER_COMPOSE_FILE=${2:-"./docker-compose.yml -f ./docker-compose.override.setup.yml"}

. "$(dirname "$0")"/_select_docker_compose.sh
. "$(dirname "$0")"/_load_dot_env.sh $ENV_FILE

echo "Using docker compose file at: $DOCKER_COMPOSE_FILE"

# stop system before setup
$DOCKER_COMPOSE -f $DOCKER_COMPOSE_FILE --env-file $ENV_FILE down

# add postgres user with privileges
$DOCKER_COMPOSE -f $DOCKER_COMPOSE_FILE --env-file $ENV_FILE up --wait omotes_postgres
$DOCKER_COMPOSE -f $DOCKER_COMPOSE_FILE exec omotes_postgres psql \
  -U "$POSTGRES_ROOT_USER" \
  -p "$POSTGRES_PORT" \
  -d postgres \
  -v PG_DB_JOBS=omotes_jobs \
  -v JOBS_RW_USER_NAME="$POSTGRES_ORCHESTRATOR_USER_NAME" \
  -v JOBS_RW_USER_PASSWORD="$POSTGRES_ORCHESTRATOR_USER_PASSWORD" \
  -v PG_DB_TIMESERIES=omotes_timeseries \
  -v PG_DB_PREFECT=prefect_server \
  -v TIMESERIES_RW_USER_NAME="$POSTGRES_TIMESERIES_RW_USER_NAME" \
  -v TIMESERIES_RW_USER_PASSWORD="$POSTGRES_TIMESERIES_RW_USER_PASSWORD" \
  -v TIMESERIES_RO_USER_NAME="$POSTGRES_TIMESERIES_RO_USER_NAME" \
  -v TIMESERIES_RO_USER_PASSWORD="$POSTGRES_TIMESERIES_RO_USER_PASSWORD" \
  -v PREFECT_USER_NAME="$POSTGRES_PREFECT_USER_NAME" \
  -v PREFECT_USER_PASSWORD="$POSTGRES_PREFECT_USER_PASSWORD" \
  -f /setup/init.sql

# # add rabbitmq 'omotes' and 'celery' vhosts and users
# $DOCKER_COMPOSE -f $DOCKER_COMPOSE_FILE up --wait rabbitmq
# $DOCKER_COMPOSE -f $DOCKER_COMPOSE_FILE exec rabbitmq /bin/sh -c "./setup/rabbitmq-init.sh"

# add influxdb users with write access for optimizer/simulator and with admin rights
# for the frontend (root admin user via env vars)
$DOCKER_COMPOSE -f $DOCKER_COMPOSE_FILE up --wait omotes_influxdb
$DOCKER_COMPOSE -f $DOCKER_COMPOSE_FILE exec omotes_influxdb /bin/sh -c "./setup/influxdb-init.sh"

# stop system after setup
$DOCKER_COMPOSE -f $DOCKER_COMPOSE_FILE --env-file $ENV_FILE down
