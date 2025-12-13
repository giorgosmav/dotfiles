#!/usr/bin/env bash
set -euo pipefail
[[ -f /etc/arch-release ]] || exit 0

if ! command -v paru >/dev/null 2>&1; then
  sudo pacman -S --needed --noconfirm base-devel git
  tmp="$(mktemp -d)"
  git clone https://aur.archlinux.org/paru.git "$tmp/paru"
  (cd "$tmp/paru" && makepkg -si --noconfirm)
  rm -rf "$tmp"
fi
