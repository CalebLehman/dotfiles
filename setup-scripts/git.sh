#!/bin/sh

# [Git](https://github.com/git/git)
sudo apt-get install -y git
cd ${HOME}/dotfiles
stow git
