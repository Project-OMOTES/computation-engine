#!/bin/bash

. scripts/_select_docker_compose.sh

$DOCKER_COMPOSE down
$DOCKER_COMPOSE up --wait
