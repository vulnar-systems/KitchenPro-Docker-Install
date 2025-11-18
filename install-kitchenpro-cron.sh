#!/usr/bin/env bash
set -euo pipefail

echo "→ Updating package lists…"
apt-get update -y

echo "→ Installing cron service…"
apt-get install -y cron

echo "→ Ensuring /usr/bin/php exists…"
if [ ! -x /usr/bin/php ]; then
  echo "✖ /usr/bin/php not found. Installing CLI PHP…"
  apt-get install -y php-cli
fi

echo "→ Creating KitchenPro cron job file…"

cat > /etc/cron.d/kitchenpro << 'EOF'
# KitchenPro Cron Jobs

# Run every minute: post stock moves
* * * * * root /usr/bin/php /var/www/html/protected/cron/cron_post_stock_moves.php >/dev/null 2>&1

# Run daily at 18:10: run backup script
10 18 * * * root /usr/bin/php /var/www/html/protected/cron/cron_run_backup.php >/dev/null 2>&1
EOF

echo "→ Applying correct permissions…"
chmod 644 /etc/cron.d/kitchenpro

echo "→ Starting cron service in the background…"
service cron restart || service cron start

echo "✓ Cron jobs installed:"
echo "  - Every minute: cron_post_stock_moves.php"
echo "  - Daily at 18:10: cron_run_backup.php"
