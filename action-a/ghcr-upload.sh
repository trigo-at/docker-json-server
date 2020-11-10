#!/bin/sh

echo ${{ secrets.TRIGO_PACKAGE_ACCESS_TOKEN }} | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin
docker build -t ghcr.io/trigo-at/docker-json-server:latest - < Dockerfile
docker push ghcr.io/trigo-at/docker-json-server:latest
