#!/bin/bash

push() {
  MESOS_VERSION=$1

  TAG=${MESOS_VERSION}

# base
  echo
  echo Pushing pixelmilk/mesos-master:${TAG}
  docker push pixelmilk/mesos-master:${TAG} || exit $?
}

# login docker before push
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"

#    Mesos version
push "1.3.1"
