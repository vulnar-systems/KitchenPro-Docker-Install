#!/usr/bin/env bash
set -euo pipefail

echo "→ Installing cron service (cronie)…"
sudo dnf -y install cronie

echo "→ Enabling and starting crond…"
sudo systemctl enable --now crond

echo "→ Creating KitchenPro cron job file…"

sudo tee /etc/cron.d/kitchenpro > /dev/null << 'EOF'
# KitchenPro Cron Jobs

# Run every minute: post stock moves
* * * * * root /usr/bin/php /var/www/html/protected/cron/cron_post_stock_moves.php >/dev/null 2>&1

# Run daily at 18:10: run backup script
10 18 * * * root /usr/bin/php /var/www/html/protected/cron/cron_run_backup.php >/dev/null 2>&1
EOF

echo "→ Applying correct permissions…"
sudo chmod 644 /etc/cron.d/kitchenpro

echo "→ Restarting crond..."
sudo systemctl restart crond

echo "✓ Cron jobs installed:"
echo "  - Every minute: cron_post_stock_moves.php"
echo "  - Daily at 18:10: cron_run_backup.php"
