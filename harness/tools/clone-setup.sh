#!/usr/bin/env bash
# Create the three lane clones next to this repo.
# Usage: clone-setup.sh [base-dir]   (default: the repo's parent directory)
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"
base="${1:-$(dirname "$repo_root")}"
origin="$(git -C "$repo_root" remote get-url origin)"

for n in 1 2 3; do
  dest="${base}/${n}-prime-swapmeet"
  if [ -d "$dest/.git" ]; then
    echo "exists: ${dest}"
  else
    git clone "$origin" "$dest"
    echo "cloned: ${dest}"
  fi
done

echo "roles: 1=frontend, 2=backend, 3=coordinator"
