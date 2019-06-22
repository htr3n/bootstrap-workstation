#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

[ ! `which git` ] && sudo apt-get install -y git

git config --global user.email "hoang.huy.tran@gmail.com"
git config --global user.name "Huy Tran"


# using snap
sudo snap install --classic eclipse

# JetBrains
sudo snap install --classic intellij-idea-ultimate

# Python
[ ! `which python3` ] && sudo apt-get install -y python3
sudo snap install --classic pycharm-professional

# Slack
sudo snap install slack --classic

# Skype
sudo snap install skype --classic
