#!/bin/bash
until pg_isready -h db -p 5432 -U $POSTGRES_USER; do
  echo "Waiting for database..."
  sleep 2
done

echo "Database is ready, starting the API..."
npm start
