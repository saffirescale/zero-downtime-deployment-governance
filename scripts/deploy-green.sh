#!/bin/bash
# Deploy to GREEN environment
set -e

IMAGE_NAME=${1:-"alwayson-app:green"}
APP_NAME="alwayson-app"
ENV="green"
CONTAINER_NAME="$APP_NAME-$ENV"

# Pull image if from Docker Hub
if [[ "$IMAGE_NAME" == *"/"* ]]; then
  docker pull $IMAGE_NAME
fi

# Stop and remove existing container (if any)
docker rm -f $CONTAINER_NAME || true

# Run new container
docker run -d --name $CONTAINER_NAME -p 8082:80 $IMAGE_NAME

echo "Deployed to GREEN environment (container: $CONTAINER_NAME, image: $IMAGE_NAME)"