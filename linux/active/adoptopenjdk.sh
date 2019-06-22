#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

[ ! `which wget` ] && sudo apt-get install -y curl
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
sudo add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
#sudo apt install -y adoptopenjdk-8-openj9 adoptopenjdk-11-openj9 adoptopenjdk-12-openj9
