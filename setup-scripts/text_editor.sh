#!/bin/sh

# [Vim](https://github.com/vim/vim)
sudo apt-get remove -y vim
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt-get update -y
sudo apt-get install -y vim-gtk3
cd ${HOME}/dotfiles
stow vim

# [Vundle](https://github.com/VundleVim/Vundle.vim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fish -c update_vim
