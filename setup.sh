#!/bin/sh

# Run from ~/dotfiles

# Intended to be run in a fairly "fresh" system
# I would mostly be worried about GNU stow not working
# if config files already existed

### Terminal Emulator ###

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:mmstick76/alacritty
sudo apt-get update -y
sudo apt-get install -y alacritty
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/alacritty 60

### Configuration Files ###

# I keep my configurations files in a GitHub repository.
# Already have them if you downloaded this script.
# I use stow to handle installing them.

sudo apt-get install -y git xclip stow curl

### Shell ###

# I'm currently using/learning [Fish](https://fishshell.com/).

sudo apt-get install -y fish
cd ${HOME}/dotfiles
stow fish
chsh -s $(which fish)

### Text Editor ###

# I'm currently using [Vim](https://www.vim.org/).
# Some platforms seem to come with "vim-tiny" or "vim.basic" or
# something.
# I go ahead and try to install something with more features.

sudo apt-get remove -y vim
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt-get update -y
sudo apt-get install -y vim-gtk3
stow vim
# also need Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fish -c updatevim

### Tmux ###

sudo apt-get install -y tmux
stow tmux

### Git ###

stow git
