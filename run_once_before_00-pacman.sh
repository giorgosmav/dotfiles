#!/usr/bin/env bash
set -euo pipefail
[[ -f /etc/arch-release ]] || exit 0

sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm \
  base \
  base-devel \
  linux \
  linux-headers \
  linux-firmware \
  git \
  zsh \
  nano \
  curl \
  wget \
  openssh \
  man-db \
  man-pages \
  pacman-contrib \
  reflector \
  chezmoi \
  fzf \
  fd \
  ripgrep \
  fastfetch \
  htop \
  bpytop
