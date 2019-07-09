#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

# Oracle Java JDK
echo "Installing Oracle JDK"

sudo add-apt-repository -y -u ppa:linuxuprising/java

# auto accept license
echo oracle-java11-installer shared/accepted-oracle-license-v1-2 select true | sudo /usr/bin/debconf-set-selections

# https://www.linuxuprising.com/2019/06/new-oracle-java-11-installer-for-ubuntu.html
#sudo apt install -y oracle-java11-installer
#sudo apt install -y oracle-java11-set-default

sudo apt install -y oracle-java12-installer
sudo apt install oracle-java12-set-default
