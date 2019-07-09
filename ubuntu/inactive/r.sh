#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

# https://cran.r-project.org/bin/linux/ubuntu/README.html

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

sudo add-apt-repository -y -u ppa:marutter/c2d4u

sudo apt-get install r-base

# R Studio public key
#sudo apt-key adv --keyserver keys.gnupg.net --recv-keys 3F32EE77E331692F
