#!/bin/bash
. "$(dirname "$0")"/_select_docker_compose.sh
. "$(dirname "$0")"/_load_dot_env.sh $1

echo "Using docker compose file at: ${2}"

# Add influxdb users with write access for optimizer/simulator and with admin rights for the frontend (root admin user via env vars)
$DOCKER_COMPOSE -f ${2} up --wait omotes_influxdb

DOCKER_EXEC="$DOCKER_COMPOSE -f ${2} exec omotes_influxdb influx -username "${INFLUXDB_ADMIN_USER}" -password "${INFLUXDB_ADMIN_PASSWORD}" -port "${INFLUXDB_PORT}" -execute"

$DOCKER_EXEC "CREATE USER ${INFLUXDB_WRITE_USER} WITH PASSWORD '${INFLUXDB_WRITE_USER_PASSWORD}'"
$DOCKER_EXEC "GRANT WRITE ON omotes_timeseries TO ${INFLUXDB_WRITE_USER}"
$DOCKER_EXEC "SET PASSWORD FOR ${INFLUXDB_WRITE_USER} = '${INFLUXDB_WRITE_USER_PASSWORD}'"
echo "Influxdb user '${INFLUXDB_WRITE_USER}' created/updated."

$DOCKER_EXEC "CREATE USER ${INFLUXDB_FRONTEND_ADMIN_USER} WITH PASSWORD '${INFLUXDB_FRONTEND_ADMIN_USER_PASSWORD}' WITH ALL PRIVILEGES"
$DOCKER_EXEC "SET PASSWORD FOR ${INFLUXDB_FRONTEND_ADMIN_USER} = '${INFLUXDB_FRONTEND_ADMIN_USER_PASSWORD}'"
echo "Influxdb user '${INFLUXDB_FRONTEND_ADMIN_USER}' created/updated."
