#!/usr/bin/env bash
# Собирает DreamyVibrantVisuals.mcpack в папку dist/
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p dist
rm -f dist/DreamyVibrantVisuals.mcpack
(cd DreamyVibrantVisuals && zip -qr -X ../dist/DreamyVibrantVisuals.mcpack . -x '*.DS_Store' -x '*desktop.ini')
echo "dist/DreamyVibrantVisuals.mcpack"
