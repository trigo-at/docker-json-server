#!/bin/sh

docker build . --tag ghcr.io/trigo-at/docker-json-server:latest
echo $TRIGO_PACKAGE_ACCESS_TOKEN | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin
docker push ghcr.io/trigo-at/json-server:latest