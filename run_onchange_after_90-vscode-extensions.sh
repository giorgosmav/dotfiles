#!/usr/bin/env bash
set -euo pipefail

# Only run if VS Code exists
if ! command -v code >/dev/null 2>&1; then
  exit 0
fi

EXT_FILE="$HOME/.local/share/chezmoi/vscode-extensions.txt"

if [[ ! -f "$EXT_FILE" ]]; then
  exit 0
fi

echo "Installing VS Code extensions..."

while read -r ext; do
  [[ -z "$ext" ]] && continue
  code --install-extension "$ext" --force >/dev/null || true
done < "$EXT_FILE"
