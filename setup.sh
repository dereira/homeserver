#!/usr/bin/env bash
set -e

# Install dependencies
apt update && apt upgrade -y
curl -fsSL https://get.docker.com | sh
apt install -y git restic

# Create proxy network
docker network create proxy 2>/dev/null || true

echo "Done. Now:"
echo "  1. Copy your .env files"
echo "  2. Run ./deploy.sh"
