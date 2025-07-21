#!/bin/bash

DOCKER_COMPOSE=$(circleci env subst "${DOCKER_COMPOSE_FILE}")
IMAGE=$(circleci env subst "${IMAGE_NAME}")


docker-compose -f $DOCKER_COMPOSE build
docker save -o $IMAGE.tar $IMAGE

