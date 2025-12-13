#!/usr/bin/env bash
set -euo pipefail

if [[ "$SHELL" != "$(command -v zsh)" ]]; then
  chsh -s "$(command -v zsh)"
fi
