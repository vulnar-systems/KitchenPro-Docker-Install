#!/usr/bin/env bash
set -euo pipefail

# Run from the same folder as docker-compose.yml, .env, backup.sql
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$BASE_DIR"

DB_CONTAINER="kitchenpro-db"

if [ ! -f .env ]; then
  echo "✖ .env not found in $BASE_DIR"
  exit 1
fi

if [ ! -f backup.sql ]; then
  echo "✖ backup.sql not found in $BASE_DIR"
  exit 1
fi

echo "→ Loading DB credentials from .env..."
set -o allexport
# shellcheck disable=SC1091
source .env
set +o allexport

echo "→ Waiting for MySQL to be ready in container: $DB_CONTAINER"

# Wait until MySQL responds
until docker exec "$DB_CONTAINER" mysqladmin ping -h "127.0.0.1" -u root -p"$MYSQL_ROOT_PASSWORD" --silent; do
  echo "  MySQL not ready yet, retrying in 3s..."
  sleep 3
done

echo "✓ MySQL is up. Importing backup.sql into database: $MYSQL_DATABASE"

# Import backup.sql into the kpro DB
docker exec -i "$DB_CONTAINER" mysql -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE" < backup.sql

echo "✓ Import completed."
