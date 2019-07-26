#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

# remove some less useful packages
sudo apt-get remove -y vim-tiny

# installing some others
sudo apt-get install -y build-essential file wget curl ack tree htop
sudo apt-get install -y gnome-tweaks font-manager gnome-calendar onedrive dconf-editor rxvt-unicode xterm

# remove unused fonts
sudo apt-get remove -y $(apt list --installed "fonts-[abcfeghijklmnopqrstvwy]*" 2>/dev/null | awk -F'/' 'NR>1{print $1}')

# install some fonts
sudo apt-get install -y fonts-b612 fonts-fantasque-sans fonts-firacode fonts-inconsolata fonts-powerline fonts-noto-core

# Generating SSH key pair
cat /dev/zero | ssh-keygen -q -t rsa -b 4096 -C "hoang.huy.tran@gmail.com" -N ""


# GNOME settings
# Keyboard repeat rate / delay
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 30
gsettings set org.gnome.desktop.peripherals.keyboard delay 250

# Hiding Dock, only show when clicking/pressing "Activities"
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

# xrandr -- set the right DPI
xrandr --fbmm `xrandr | sed -n '/ connected/s/.* \([0-9]*\)mm x \([0-9]*\)mm/\1x\2/p'`
