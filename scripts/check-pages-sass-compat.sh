#!/bin/sh
set -eu

repo_root=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)

if rg -n --glob '*.sass' '^[[:space:]]*:root([[:space:]]|$)' "$repo_root/css" "$repo_root/_sass" 2>/dev/null; then
  echo "GitHub Pages Sass compatibility check failed: bare :root selector found in .sass source. Escape it as \\:root or migrate the file to .scss." >&2
  exit 1
fi
