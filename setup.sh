#!/bin/sh

# Run from ~/dotfiles

# Intended to be run in a fairly "fresh" system
# I would mostly be worried about GNU stow not working
# if config files already existed

sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:dawidd0811/neofetch # necessary on some older releases
sudo apt-get update -y
sudo apt-get install -y curl neofetch

### Configuration Files ###

# I keep my configurations files in a GitHub repository.
# Already have them if you downloaded this script.
# I use stow to handle installing them.

sudo apt-get install -y stow

### Shell ###

# I'm currently using/learning [Fish](https://fishshell.com/).
# Also, I like powerline.

sudo apt-get install -y python-pip
pip install --user powerline-status
cd ${HOME}/dotfiles
mkdir -p powerline-install/.config
cp $(pip show powerline-status | grep -i location | cut -d' ' -f2)/powerline ${HOME}/dotfiles/powerline-install/.config/ -r
mkdir -p powerline-install/.local/bin
for pla in powerline powerline-config powerline-daemon powerline-lint powerline-render; do
  mv ${HOME}/.local/bin/${pla} ${HOME}/dotfiles/powerline-install/.local/bin/.
done
# Still need powerline fonts; something like sudo apt-get install -y fonts-powerline
stow powerline-install

sudo apt-get install -y fish
fish -c "set -U fish_user_paths $HOME/.local/bin $fish_user_paths"
cd ${HOME}/dotfiles
stow fish
if [ -f ~/.bashrc ]; then
  mv ~/.bashrc ~/.bashrc.old
fi
stow bash # bashrc that launches fish, instead of changing default shell to fish
          # (has to do with termite setting TERM=xterm-termite, and is not a great solution)

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

### Terminal Emulator ###

# I don't have any strong allegiances to any terminal emulator, but I've
# used [Termite](https://github.com/thestinger/termite) and have been
# happy with it.
# I usually install it as follows (taken from https://raw.githubusercontent.com/Corwind/termite-install/master/termite-install.sh):

sudo apt-get install -y \
git \
g++ \
libgtk-3-dev \
gtk-doc-tools \
gnutls-bin \
valac \
intltool \
libpcre2-dev \
libglib3.0-cil-dev \
libgnutls28-dev \
libgirepository1.0-dev \
libxml2-utils \
gperf \

mkdir ~/temp && cd ~/temp

git clone https://github.com/thestinger/vte-ng.git
cd vte-ng && ./autogen.sh && make && sudo make install && cd ..

git clone --recursive https://github.com/thestinger/termite.git
cd termite && make && sudo make install && cd .. && rm temp -rf

sudo ldconfig

sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/termite 60
