#!/bin/bash

# Stop and remove the currently running containers
docker-compose down

# Pull the latest Docker images
echo "Pulling the latest images..."
docker pull yapadinithi/buzbud-web-action:v1.0.0
docker pull yapadinithi/buzbud-api-action:v1.0.0
docker pull postgres:latest

# Start the services with Docker Compose (this automatically starts containers in detached mode)
echo "Starting the services with Docker Compose..."
docker-compose up -d

# Display the status of the running containers
echo "The following containers are running:"
docker ps
