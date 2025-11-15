#!/usr/bin/env bash
set -euo pipefail

echo "→ Updating Fedora and installing Docker Engine…"
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "→ Enabling and starting Docker service…"
sudo systemctl enable --now docker

echo "→ Adding your user to the docker group…"
sudo usermod -aG docker "$USER"

echo "→ Reloading group permissions…"
newgrp docker <<EOF
echo "✓ Docker group activated"
EOF


echo
echo "#########################################"
echo "  KitchenPro Environment Setup Prompts"
echo "#########################################"
echo

# Prompt for variables to inject into the .env file
read -rp "Enter MySQL root password: " MYSQL_ROOT_PASSWORD
read -rp "Enter KitchenPro database name (default: kpro): " MYSQL_DATABASE
MYSQL_DATABASE=${MYSQL_DATABASE:-kpro}

read -rp "Enter KitchenPro DB username (default: appuser): " MYSQL_USER
MYSQL_USER=${MYSQL_USER:-appuser}

read -rp "Enter KitchenPro DB user password: " MYSQL_PASSWORD

echo
echo "✓ Values captured. Writing .env…"

echo "→ Creating KitchenPro stack directory…"
mkdir -p ~/kitchenpro-stack
cd ~/kitchenpro-stack

echo "Copy backup from deploy to stack"
mv ~/kitchenpro-deploy/backup.sql ~/kitchenpro-stack
echo "moved back.sql to stack"
mv ~/kitchenpro-deploy/import-backup.sh ~/kitchenpro-stack
chmod +x import-backup.sh


echo "→ Creating .env file…"
cat > .env <<EOF
MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
MYSQL_DATABASE=${MYSQL_DATABASE}
MYSQL_USER=${MYSQL_USER}
MYSQL_PASSWORD=${MYSQL_PASSWORD}
EOF

echo "→ Creating docker-compose.yml…"
cat > docker-compose.yml <<'EOF'
services:
  app:
    image: docker.io/otshabeng/kitchenpro-app:latest
    container_name: kitchenpro-app
    environment:
      MYSQL_HOST: db
      MYSQL_DATABASE: ${MYSQL_DATABASE}
      MYSQL_USER: ${MYSQL_USER}
      MYSQL_PASSWORD: ${MYSQL_PASSWORD}
    ports:
      - "8080:80"
    depends_on:
      - db
    restart: unless-stopped

  db:
    image: docker.io/otshabeng/kitchenpro-db:latest
    container_name: kitchenpro-db
    environment:
      MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD}
      MYSQL_DATABASE: ${MYSQL_DATABASE}
      MYSQL_USER: ${MYSQL_USER}
      MYSQL_PASSWORD: ${MYSQL_PASSWORD}
    ports:
      - "3307:3306"
    volumes:
      - ./backup.sql:/docker-entrypoint-initdb.d/backup.sql:Z
    restart: unless-stopped

  phpmyadmin:
    image: docker.io/phpmyadmin:5
    container_name: kitchenpro-pma
    environment:
      PMA_HOST: db
      PMA_USER: root
      PMA_PASSWORD: ${MYSQL_ROOT_PASSWORD}
      UPLOAD_LIMIT: 64M
    ports:
      - "8081:80"
    depends_on:
      - db
    restart: unless-stopped
EOF

echo "→ Checking for backup.sql..."
if [ ! -f ./backup.sql ]; then
  echo "✖ ERROR: backup.sql is missing in ~/kitchenpro-stack"
  echo "Place backup.sql in ~/kitchenpro-stack and run:"
  echo "    docker compose up -d"
  exit 1
fi

echo "→ Opening firewall ports (8080, 8081, 3307)…"
sudo firewall-cmd --permanent --add-port=8080/tcp --add-port=8081/tcp --add-port=3307/tcp || true
sudo firewall-cmd --reload || true

echo "→ Bringing stack up fresh (remove old volumes)…"
docker compose down -v || true
docker compose up -d

echo "→ Importing backup.sql into kpro"
./import-backup.sh


echo
echo "✓ KitchenPro is now running."
echo "  App:        http://localhost:8080"
echo "  phpMyAdmin: http://localhost:8081"
echo "  MySQL:      localhost:3307"
echo
echo "If Docker complains about permissions, reboot or log out and in."
