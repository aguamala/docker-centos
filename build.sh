#!/usr/bin/env sh

cd build/

docker build -t aguamala/centos:${BUILD_NUMBER} .

DESTINATION=aguamala/centos:${BUILD_NUMBER}
LATEST_DESTINATION=aguamala/centos:master

docker tag aguamala/centos:${BUILD_NUMBER} ${DESTINATION}
docker push ${DESTINATION}
docker tag -f aguamala/centos:${BUILD_NUMBER} ${LATEST_DESTINATION}
docker push ${LATEST_DESTINATION}
