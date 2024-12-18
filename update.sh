#!/bin/bash

# Stop and remove the currently running containers
docker stop buzbud-web-action buzbud-api-action buzbud-db-action 2>/dev/null
docker rm buzbud-web-action buzbud-api-action buzbud-db-action 2>/dev/null

# Pull the latest Docker images
echo "Pulling the latest images..."
docker pull yapadinithi/buzbud-web-action:v1.0.0
docker pull yapadinithi/buzbud-api-action:v1.0.0
docker pull postgres:latest

# Navigate to the directory containing docker-compose.yml
cd /home/username/github-actions-compose

# Run the database container using docker-compose
echo "Starting the database container..."
docker-compose down
docker-compose pull
docker-compose up -d --build

# Display running containers
echo "The following containers are running:"
docker ps
