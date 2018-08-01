#!/bin/sh

set -e

# Update system.
sudo pacman -Syu

# Install packages.
sudo pacman -S \
  base-devel \
  chromium \
  feh \
  git \
  openssh \
  rxvt-unicode \
  rxvt-unicode-terminfo \
  tmux \
  vim \
  wget \
  yajl

# Install package-query (needed by yaourt).
cd /tmp
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si

# Install yaourt.
cd /tmp
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si
