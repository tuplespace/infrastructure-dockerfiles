#!/usr/bin/env sh

VERSION=$(cat VERSION)
cd $1
BUILDNAME="$1"
IMAGENAME="tuplestream/$BUILDNAME:$VERSION"
IMAGE_LATEST="tuplestream/$BUILDNAME:latest"

echo $IMAGENAME

docker build . -t $IMAGENAME
echo $DKPW | docker login --username $DOCKER_USER --password-stdin
docker push $IMAGENAME
docker tag $IMAGENAME $IMAGE_LATEST
docker push $IMAGE_LATEST
