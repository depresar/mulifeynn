#!/usr/bin/env bash
# Собирает index.html в корне репозитория для GitHub Pages из site/index.html
set -euo pipefail
cd "$(dirname "$0")"
{
  echo '<!doctype html><html lang="ru"><head><meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">'
  python3 -c 'import re,sys; s=open("site/index.html",encoding="utf-8").read(); sys.stdout.write(re.sub(r"""([="(`'"'"'])(img|video)/""", r"\1site/\2/", s))'
} > index.html
