#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

#
#wget https://download.sublimetext.com/sublime_text_3_build_3207_x64.tar.bz2

# https://www.sublimetext.com/docs/3/linux_repositories.html

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text