#!/bin/bash

# Ensure system is up to date
sudo pacman -Syu

# Install git
sudo pacman -S git base-devel

# Install yay
mkdir /tmp/yay
cd /tmp/yay
git clone https://aur.archlinux.org/yay /tmp/yay
makepkg -si
cd
rm -rf /tmp/yay

# Install packages
yay -S --needed - < ~/Dotfiles/laptops/deli/scripts/pkgs.txt

# Install walker
mkdir /tmp/walker
cd /tmp/walker
git clone https://github.com/abenz1267/walker.git /tmp/walker
cargo build --release
cp ./target/release/walker /usr/bin
cd
rm -rf /tmp/walker

# Install AB Download Manager
bash <(curl -fsSL https://raw.githubusercontent.com/amir1376/ab-download-manager/master/scripts/install.sh)

