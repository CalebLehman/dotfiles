#!/bin/sh

# [Fish](https://github.com/fish-shell/fish-shell)
sudo apt-get install -y fish
cd ${HOME}/dotfiles
stow fish
chsh -s $(which fish)

# [Bass](https://github.com/edc/bass)
git clone --depth=1 git clone https://github.com/edc/bass.git ${HOME}/.config/bass
cd ${HOME}/.config/bass
rm -rf ${HOME}/.config/bass/.git
make install
