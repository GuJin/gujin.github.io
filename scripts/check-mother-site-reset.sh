#!/bin/sh
set -eu

repo_root=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)

! rg -n '/notes/|site\.posts|Archived notes|archived notes|Older notes stay available' \
  "$repo_root/index.html" \
  "$repo_root/_includes/header.html" \
  "$repo_root/_includes/footer.html" \
  "$repo_root/about.md" \
  "$repo_root/privacy.md"

test ! -e "$repo_root/notes.md"
test ! -e "$repo_root/feed.xml"
test ! -e "$repo_root/_layouts/post.html"
! find "$repo_root/_posts" -maxdepth 1 -type f | grep .
! rg -n 'jekyll-paginate|paginate:' "$repo_root/_config.yml"
