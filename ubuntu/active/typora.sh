#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

if [ ! `which typora` ]
then
    # Typora Markdown Editor
    echo "Installing Typora ..."
    wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
    sudo add-apt-repository 'deb https://typora.io/linux ./'
    sudo apt-get update
    sudo apt-get install -y typora
fi