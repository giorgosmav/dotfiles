#!/usr/bin/env bash
set -euo pipefail
command -v paru >/dev/null 2>&1 || exit 0

AUR_APPS=(
  ags-hyprpanel-git
  aylurs-gtk-shell-git
  appmenu-glib-translator-git

  libastal-gjs-git
  libastal-meta
  libastal-git
  libastal-greetd-git
  libastal-hyprland-git
  libastal-network-git
  libastal-notifd-git
  libastal-mpris-git
  libastal-tray-git
  libastal-wireplumber-git
  libastal-battery-git
  libastal-bluetooth-git
  libastal-powerprofiles-git
  libastal-io-git
  libastal-auth-git
  libastal-apps-git
  libastal-cava-git
  libastal-river-git

  # --- Clipboard / UX ---
  clipse
  clipse-gui
  clipman

  brave-nightly-bin
  visual-studio-code-bin
  flameshot-git
  walker-bin
  windsurf

  localxpose
  rar
  gnu-netcat

  php-pdo_sqlsrv
  php-sqlsrv
  msodbcsql
  mssql-tools
  jdk22-graalvm-bin

  swaylock-effects

  spotify-launcher

  ttf-twemoji

  # --- Hardware-specific (comment out if not needed) ---
  # nvidia-dkms
  # nvidia-utils
  # nvidia-settings
  # nvidia-prime
  # lib32-nvidia-utils
  # opencl-nvidia-tkg
  # lib32-opencl-nvidia-tkg
)

paru -S --needed --noconfirm "${AUR_APPS[@]}"
