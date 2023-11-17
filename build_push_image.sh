#!/bin/bash
# Build images with tag item-app:v1
docker build -t item-app:v1 .
# Show docker images
docker images
# Change tag images
docker tag item-app:v1 ghcr.io/sofyanegil/item-app:v1
# Login to GitHub Container Registry
echo $CR_PAT | docker login ghcr.io -u sofyanegil --password-stdin
# Push images to GitHub Container Registry
docker push ghcr.io/sofyanegil/item-app:v1
