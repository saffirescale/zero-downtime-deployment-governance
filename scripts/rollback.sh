#!/bin/bash
echo Rolling back to previous version

# Rollback script: switch traffic to previous environment
set -e

# This is a placeholder. In real infra, this would update the ALB target group or Nginx config.
# For demo, just print what would happen.

PREV_ENV=$1
if [[ "$PREV_ENV" != "blue" && "$PREV_ENV" != "green" ]]; then
  echo "Usage: $0 [blue|green]"
  exit 1
fi

echo "Rolling back: switching traffic to $PREV_ENV environment."
# Example: update symlink or Nginx config, then reload Nginx
# ln -sf /etc/nginx/sites-available/$PREV_ENV /etc/nginx/sites-enabled/current
# nginx -s reload