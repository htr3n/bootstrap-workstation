#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

[ ! `which git` ] && sudo apt-get install -y git

git config --global user.email "hoang.huy.tran@gmail.com"
git config --global user.name "Huy Tran"


# using snap
sudo snap install --classic eclipse

# JetBrains
#sudo snap install --classic intellij-idea-ultimate
sudo snap install intellij-idea-ultimate --channel=2019.1/stable --classic

# Python
[ ! `which python3` ] && sudo apt-get install -y python3
sudo apt-get install -y pipenv

#sudo snap install --classic pycharm-professional
sudo snap install pycharm-professional --channel=2019.1/stable --classic

# PhpStorm
#sudo snap install --classic phpstorm
sudo snap install phpstorm --channel=2019.1/stable --classic

# Golang
sudo snap install goland --channel=2019.1/stable --classic

# JavaScript, Node.js, NPM, Yarn
#[ ! `which node` ] && sudo apt-get install -y nodejs
#[ ! `which npm` ] && sudo apt-get install -y npm
#[ ! `which yarnpkg` ] && sudo apt-get install -y yarnpkg

# WebStorm
sudo snap install webstorm --channel=2019.1/stable --classic

# DataGrip
sudo snap install datagrip --channel=2019.1/stable --classic

# Slack
sudo snap install slack --classic

# Skype
sudo snap install skype --classic

# Telegram
sudo snap install telegram-desktop
