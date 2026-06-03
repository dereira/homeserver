#!/usr/bin/env bash

set -e

# Install dependencies
apt update && apt upgrade -y
curl -fsSL https://get.docker.com | sh
apt install -y git restic

# Clone repo
git clone https://github.com/you/homelab /opt/homelab
cd /opt/homelab

# Copy env files
cp nextcloud/.env.example nextcloud/.env

echo "Edit /opt/homelab/nextcloud/.env then run ./deploy.sh"
