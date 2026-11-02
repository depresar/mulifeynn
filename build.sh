#!/usr/bin/env bash
# Собирает index.html в корне репозитория для GitHub Pages из site/index.html
set -euo pipefail
cd "$(dirname "$0")"
{
  echo '<!doctype html><html lang="ru"><head><meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  sed 's#\([="(]\)img/#\1site/img/#g; s#`img/#`site/img/#g' site/index.html
} > index.html
