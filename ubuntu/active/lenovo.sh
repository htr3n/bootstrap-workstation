#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

# some tools for my Lenovo T430s
sudo add-apt-repository -y -u ppa:linrunner/tlp
sudo apt-get install -y tlp tlp-rdw tp-smapi-dkms acpi-call-dkms
sudo tlp start
sudo tlp setcharge 45 50 BAT0

# finger print
if [[ `lsusb | grep fingerprint` ]]; then
   sudo apt install -y fprintd libpam-fprintd
fi
