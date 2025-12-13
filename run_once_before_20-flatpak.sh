#!/usr/bin/env bash
set -euo pipefail
[[ -f /etc/arch-release ]] || exit 0

echo ">>> Installing Flatpak"

sudo pacman -S --needed --noconfirm flatpak

# Add Flathub if missing
if ! flatpak remote-list | grep -q flathub; then
  sudo flatpak remote-add --if-not-exists flathub \
    https://flathub.org/repo/flathub.flatpakrepo
fi
