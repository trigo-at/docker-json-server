#!/bin/sh

docker build . --tag ghcr.io/$GITHUB_REPOSITORY:${GITHUB_REF##*/}
echo $TRIGO_PACKAGE_ACCESS_TOKEN | docker login ghcr.io -u $GITHUB_ACTOR --password-stdin
docker push ghcr.io/$GITHUB_REPOSITORY:${GITHUB_REF##*/}