#!/usr/bin/env sh

cd build/

docker build -t aguamala/centos:7-${BUILD_NUMBER} .

DESTINATION=aguamala/centos:7-${BUILD_NUMBER}
LATEST_DESTINATION=aguamala/centos:7

docker tag aguamala/centos:7-${BUILD_NUMBER} ${DESTINATION}
docker push ${DESTINATION}
docker tag -f aguamala/centos:7-${BUILD_NUMBER} ${LATEST_DESTINATION}
docker push ${LATEST_DESTINATION}
