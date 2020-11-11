#!/bin/sh

echo $TRIGO_PACKAGE_ACCESS_TOKEN | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin
docker build -t trigo-at/docker-json-server
docker tag  trigo-at/docker-json-server ghcr.io/trigo-at/docker-json-server:latest
docker push ghcr.io/trigo-at/docker-json-server:latest
