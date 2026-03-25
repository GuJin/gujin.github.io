#!/bin/sh
set -eu

repo_root=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)

rg -n 'diff\.gujin\.tech' \
  "$repo_root/index.html" \
  "$repo_root/tools.md" \
  "$repo_root/about.md" \
  "$repo_root/privacy.md" \
  "$repo_root/diff.md" \
  "$repo_root/app.md"

! rg -n 'practical notes|archived notes|landing pages, documentation-style copy, and archived notes' \
  "$repo_root/_config.yml" \
  "$repo_root/about.md" \
  "$repo_root/privacy.md"
