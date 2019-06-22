#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

# remove some less useful packages
sudo apt-get remove -y vim-tiny

# installing some others
sudo apt-get install -y build-essential file wget curl ack gnome-tweaks font-manager gnome-calendar onedrive

# remove unused fonts
sudo apt-get remove -y $(apt list --installed "fonts-[abcfeghijklmnopqrstvwy]*" 2>/dev/null | awk -F'/' 'NR>1{print $1}')


# Generating SSH key pair
cat /dev/zero | ssh-keygen -q -t rsa -b 4096 -C "hoang.huy.tran@gmail.com" -N ""
