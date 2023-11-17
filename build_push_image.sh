#!/bin/bash
# Build images with tag item-app:v1
docker build -t item-app:v1 .
# Show docker images
docker images
# Change tag images
docker tag item-app:v1 sofyanegi/item-app:v1
# Login to Docker Hub Registry
echo $PASSWORD_DOCKER_HUB | docker login -u sofyanegi --password-stdin
# Push images to Docker Hub Registry
docker push sofyanegi/item-app:v1
