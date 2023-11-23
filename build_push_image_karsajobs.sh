#!/bin/bash
# Build and gave a tag to the image
docker build -t ghcr.io/sofyanegil/karsajobs:latest .
# Login to GitHub Container Registry
echo $CR_PAT | docker login ghcr.io -u sofyanegil --password-stdin
# Push the image to Github Container Registry
docker push ghcr.io/sofyanegil/karsajobs:latest