#!/bin/sh

echo $TRIGO_PACKAGE_ACCESS_TOKEN | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin
docker build https://raw.githubusercontent.com/trigo-at/docker-json-server/master/Dockerfile -t trigo-at/docker-json-server
docker tag  trigo-at/docker-json-server ghcr.io/trigo-at/docker-json-server:latest
docker push ghcr.io/trigo-at/docker-json-server:latest
