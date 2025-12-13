#!/usr/bin/env bash
set -euo pipefail

FLATPAK_APPS=(
  com.discordapp.Discord
)

for app in "${FLATPAK_APPS[@]}"; do
  if ! flatpak list | grep -q "$app"; then
    flatpak install -y flathub "$app"
  fi
done
