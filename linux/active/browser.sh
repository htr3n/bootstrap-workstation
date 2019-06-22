#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

[ ! `which firefox` ] && sudo apt-get install -y firefox

[ ! `which chromium-browser` ] && sudo apt-get install -y chromium-browser

# https://snapcraft.io/chromium
# or sudo snap install chromium