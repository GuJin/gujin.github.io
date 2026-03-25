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

! rg -n 'mother site|root site|stay small|content archive|handoff page|public workflows' \
  "$repo_root/_config.yml" \
  "$repo_root/_includes/header.html" \
  "$repo_root/_includes/footer.html" \
  "$repo_root/index.html" \
  "$repo_root/tools.md" \
  "$repo_root/about.md" \
  "$repo_root/privacy.md" \
  "$repo_root/diff.md" \
  "$repo_root/app.md"
