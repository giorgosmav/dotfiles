#!/usr/bin/env bash
set -euo pipefail

if systemctl list-unit-files | grep -q '^sddm.service'; then
  echo "Ensuring SDDM is enabled"
  sudo systemctl enable sddm
fi
