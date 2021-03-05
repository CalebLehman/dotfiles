#!/bin/sh

# Run from ~/dotfiles

# Intended to be run in a fairly "fresh" system
# I would mostly be worried about GNU stow not working
# if config files already existed

sudo apt-get install -y software-properties-common
sudo apt-get update -y

### Configuration Files ###

# I keep my configurations files in this GitHub repository.
# I use stow to handle installing them.

sudo apt-get install -y git stow curl build-essential

### Shell ###
# I'm currently using/learning Fish.
./setup-scripts/shell.sh

### Text Editor ###
# I'm currently using Vim.
# Sometimes the version provided by the system packages
# doesn't have enough features.
# There are some commented lines in the text_editor.sh
# script that can install particular "good-enough" version
# (or it could be built from source).
./setup-scripts/text_editor.sh

### Tmux ###
./setup-scripts/tmux.sh

### Git ###
./setup-scripts/git.sh

### Node ###
./setup-scripts/node.sh

### Python ###
./setup-scripts/python.sh

### Ruby ###
./setup-scripts/ruby.sh
