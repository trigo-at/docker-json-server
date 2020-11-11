#!/bin/sh

# docker build . --tag ghcr.io/trigo-at/docker-json-server
# docker tag ghcr.io/trigo-at/docker-json-server ghcr.io/trigo-at/docker-json-server:latest
echo $TRIGO_PACKAGE_ACCESS_TOKEN | docker login docker.pkg.github.com -u $GITHUB_ACTOR --password-stdin
docker pull docker.pkg.github.com/trigo-at/docker-json-server/json-server-image:latest
docker tag docker.pkg.github.com/trigo-at/docker-json-server/json-server-image:latest ghcr.io/trigo-at/docker-json-server:latest
echo $TRIGO_PACKAGE_ACCESS_TOKEN | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin
docker push ghcr.io/trigo-at/docker-json-server:latest