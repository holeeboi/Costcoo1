#!/usr/bin/env bash
# Deploys this landing page to Vercel (production).
# Usage: bash deploy.sh
set -e

cd "$(dirname "$0")"

if ! command -v vercel >/dev/null 2>&1; then
  echo "Vercel CLI not found. Installing..."
  npm install -g vercel
fi

echo "Deploying to Vercel..."
vercel --prod --yes
echo "Done. Your live URL is shown above."
