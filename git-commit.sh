#!/usr/bin/env bash
set -euo pipefail

# Initialize a git repo if one doesn't exist
if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git init
fi

# Stage all files
git add -A

# If there are no staged changes, exit
if git diff --cached --quiet; then
  echo "No changes to commit."
  exit 0
fi

# Commit with the required message
git commit -m "Initial commit with index.php and README.md"

echo "Committed: Initial commit with index.php and README.md"
