#!/bin/sh

[[ ! -x "/usr/bin/dnf" ]] && return

# Utilities
sudo dnf install -y git cmake vim tmux wget curl ack

# C dev
sudo dnf group install -y "C Development Tools and Libraries"

# Golang
sudo dnf install -y golang-bin

# Media
sudo dnf install -y vlc mpv gnome-mpv

# Fonts
sudo dnf install -y levien-inconsolata-fonts adobe-source-code-pro-fonts.noarch

# Sublime Text
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text

# 
sudo dnf install -y gnome-tweak-tool

# Grub
#sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg

# ThinkPad and systems
sudo dnf install -y tlp smartmontools
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y http://repo.linrunner.de/fedora/tlp/repos/releases/tlp-release.fc$(rpm -E %fedora).noarch.rpm 
sudo dnf install -y akmod-tp_smapi akmod-acpi_call kernel-devel
sudo tlp start
sudo systemctl enable -now tlp.service
sudo systemctl mask systemd-rfkill.service
sudo systemctl mask systemd-rfkill.socket

sudo dnf install -y lshw acpi powertop lm_sensors dkms

# Fedora Fusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y fedora-workstation-repositories.noarch
#sudo dnf config-manager --set-enabled google-chrome
#sudo dnf install -y google-chrome-stable    
#sudo rpm --import https://dl-ssl.google.com/linux/linux_signing_key.pub

# Browsers
sudo dnf install -y chromium firefox

# Enpass
(cd /etc/yum.repos.d/ && sudo wget https://yum.enpass.io/enpass-yum.repo)




