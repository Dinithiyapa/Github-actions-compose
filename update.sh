#!/bin/bash

# Ensure the server is up to date with the latest images
docker-compose pull

# Restart the services to apply the new images
docker-compose up -d

# Optionally, you can check logs or do additional clean-up:
docker-compose logs -f  # Follow logs to check the services
