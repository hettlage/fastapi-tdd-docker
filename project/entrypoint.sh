#!/bin/sh

echo "Waiting for postgres..."

while ! nc -z web-db 5432; do
  sleep 0.1
  echo "Waiting..."
done

echo "PostgreSQL started"

exec "$@"
