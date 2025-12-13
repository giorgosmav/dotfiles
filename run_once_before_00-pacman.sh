#!/usr/bin/env bash
set -euo pipefail

# Arch only
[[ -f /etc/arch-release ]] || exit 0

echo ">>> Installing base tools"

sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm \
  git \
  zsh \
  nano \
  curl \
  wget \
  openssh \
  base-devel
