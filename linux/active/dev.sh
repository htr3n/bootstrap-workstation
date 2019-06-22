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
sudo apt-get install -y pipenv
sudo snap install --classic pycharm-professional

# JavaScript, Node.js, NPM, Yarn
#[ ! `which node` ] && sudo apt-get install -y nodejs
#[ ! `which npm` ] && sudo apt-get install -y npm
#[ ! `which yarnpkg` ] && sudo apt-get install -y yarnpkg

# Slack
sudo snap install slack --classic

# Skype
sudo snap install skype --classic
