#!/usr/bin/env bash

set -e

echo "Starting Caddy..."
docker compose -f caddy/docker-compose.yml up -d

echo "Starting Nextcloud AIO..."
docker compose -f nextcloud/docker-compose.yml up -d

echo "Starting Watchtower..."
docker compose -f watchtower/docker-compose.yml up -d

echo "Done. Visit https://cloud.pereiras.eu"
