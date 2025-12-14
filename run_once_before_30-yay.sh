#!/usr/bin/env bash
set -euo pipefail

[[ -f /etc/arch-release ]] || exit 0

echo "Preparing yay installation..."

# 1. Remove conflicting yay variants FIRST (non-interactive)
sudo pacman -Rns --noconfirm yay-git yay 2>/dev/null || true

# 2. Remove stray yay binary if it exists
if command -v yay >/dev/null 2>&1; then
  if ! pacman -Qo "$(command -v yay)" >/dev/null 2>&1; then
    sudo rm -f "$(command -v yay)" /usr/bin/yay-conf
    hash -r
  fi
fi

# 3. If yay already exists and works, stop
if command -v yay >/dev/null 2>&1 && yay --version >/dev/null 2>&1; then
  echo "yay already installed"
  exit 0
fi

# 4. Install yay-bin (no prompts)
echo "Installing yay-bin..."

sudo pacman -S --needed --noconfirm base-devel git

tmp="$(mktemp -d)"
git clone https://aur.archlinux.org/yay-bin.git "$tmp/yay-bin"
cd "$tmp/yay-bin"
makepkg -si --noconfirm
