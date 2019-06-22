#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

[ -x /opt/enpass/Enpass ] && return 0

wget -O - https://apt.enpass.io/keys/enpass-linux.key | sudo apt-key add -

sudo add-apt-repository -y -u 'deb https://apt.enpass.io/ stable main'

sudo apt-get install -y enpass