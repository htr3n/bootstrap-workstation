#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh


[ ! `which zsh` ] && sudo apt-get install -y zsh

# go back to $HOME
cd ~
mkdir -p ~/scripts/bin
mkdir -p ~/working/dev

echo "Downloading and configuring ZSH"

# check out the zsh-config project
[ ! -d "~/.zsh-config" ] && git clone https://github.com/htr3n/zsh-config .zsh-config

# check out the dev-config project
[ ! -d "~/scripts/dev-config" ] &&  git clone https://github.com/htr3n/dev-config scripts/dev-config

# bootstrap the shell
(cd .zsh-config ; zsh bootstrap.sh)

# need zplugin
[ ! -d "~/.zplugin" ] && mkdir ~/.zplugin
git clone https://github.com/zdharma/zplugin.git ~/.zplugin/bin

# change login shell
sudo usermod --shell `which zsh` $USER

# check out the vim-config project
echo "Downloading and configuring VIM"

[ ! -d "~/scripts/vim-config" ] && git clone https://github.com/htr3n/vim-config scripts/vim-config

rm -f "~/.vim" && ln -sf ~/scripts/vim-config ~/.vim
rm -f "~/.vimrc" && ln -sf ~/.vim/my.vimrc ~/.vimrc

[ ! `which vim` ] && sudo apt-get install -y vim

# install all VIM plugins
vim +PlugInstall +qall
