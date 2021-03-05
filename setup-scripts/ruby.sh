#!/bin/sh

# [rbenv](https://github.com/rbenv/rbenv)
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
fish << 'EOF'
set -U fish_user_paths $HOME/.rbenv/bin $fish_user_paths
EOF

# [ruby-build](https://github.com/rbenv/ruby-build)
mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
