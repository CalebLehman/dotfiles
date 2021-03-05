#!/bin/sh

# [tmux](https://github.com/tmux/tmux)
sudo apt-get install -y tmux
cd ${HOME}/dotfiles
stow tmux
