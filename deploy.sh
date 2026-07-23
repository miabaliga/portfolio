#!/bin/bash
set -e
cd "$(dirname "$0")"

if [ -z "$1" ]; then
  echo "Usage: ./deploy.sh \"what changed\""
  echo "Example: ./deploy.sh \"updated hero colors\""
  exit 1
fi

git add .
git commit -m "$1"
git push origin main

echo ""
echo "✅ Pushed. Cloudflare will auto-deploy in ~30-60 seconds."
echo "Live at: https://ramyabaligab.dev"
