#!/bin/bash

export COMPOSE_PROJECT_NAME=omotes-system-tests
ENV_FILE=".env.test"
DOCKER_COMPOSE="docker compose -f docker-compose.yml -f system_tests/docker-compose.override.yml --env-file ${ENV_FILE} --profile deploy-optimizer --profile deploy-simulator"

$DOCKER_COMPOSE down -v

# Bring up everything except system_tests first
$DOCKER_COMPOSE up --build --wait --scale system_tests=0

# Run the tests as a one-off, attached, so we get their real exit code.
$DOCKER_COMPOSE run --rm --no-deps --build system_tests
TEST_EXIT_CODE=$?

# Tear down (comment out to leave stack running for inspection or running tests in debug mode)
$DOCKER_COMPOSE down -v

exit $TEST_EXIT_CODE
