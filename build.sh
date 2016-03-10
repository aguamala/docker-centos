#!/usr/bin/env sh

CENTOS_VERSION=7

cd build-7/

docker build -t aguamala/centos:${CENTOS_VERSION} .

DESTINATION=aguamala/centos:${CENTOS_VERSION}
LATEST_DESTINATION=aguamala/centos:latest

docker tag aguamala/centos:${CENTOS_VERSION} ${DESTINATION}
docker push ${DESTINATION}
docker tag -f aguamala/centos:${CENTOS_VERSION} ${LATEST_DESTINATION}
docker push ${LATEST_DESTINATION}
