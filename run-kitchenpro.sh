#!/usr/bin/env bash
set -euo pipefail

STACK_DIR="$HOME/kitchenpro-stack"

echo "→ Using stack directory: $STACK_DIR"

if [ ! -d "$STACK_DIR" ]; then
  echo "✖ Directory $STACK_DIR does not exist. Create it and put docker-compose.yml, .env, and backup.sql inside."
  exit 1
fi

cd "$STACK_DIR"

# sanity checks
if [ ! -f docker-compose.yml ]; then
  echo "✖ docker-compose.yml not found in $STACK_DIR"
  exit 1
fi

if [ ! -f .env ]; then
  echo "✖ .env file not found in $STACK_DIR"
  exit 1
fi

if [ ! -f backup.sql ]; then
  echo "✖ backup.sql not found in $STACK_DIR (required for DB seeding)"
  exit 1
fi

echo "✓ Found docker-compose.yml, .env, and backup.sql"

# ensure docker is running
if ! systemctl is-active --quiet docker; then
  echo "→ Starting Docker service..."
  sudo systemctl enable --now docker
fi

echo "→ Stopping existing stack and removing volumes (fresh DB seed)..."
docker compose down -v || true

echo "→ Pulling latest images..."
docker compose pull

echo "→ Bringing stack up in the background..."
docker compose up -d

# Open firewall ports if firewalld exists
if command -v firewall-cmd >/dev/null 2>&1; then
  echo "→ Configuring firewall (8080, 8081, 3307)..."
  sudo firewall-cmd --permanent --add-port=8080/tcp --add-port=8081/tcp --add-port=3307/tcp || true
  sudo firewall-cmd --reload || true
fi

echo
echo "✓ KitchenPro stack is up."
echo "  App:        http://localhost:8080"
echo "  phpMyAdmin: http://localhost:8081"
echo "  MySQL:      localhost:3307"
