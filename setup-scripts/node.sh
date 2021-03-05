#!/bin/sh

# [nodenv](https://github.com/nodenv/nodenv)
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
cd ~/.nodenv && src/configure && make -C src
set -Ux fish_user_paths $HOME/.nodenv/bin $fish_user_paths

# [node-build](https://github.com/nodenv/node-build)
mkdir -p "$(nodenv root)"/plugins
git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
