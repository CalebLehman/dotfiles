set -g -x fish_greeting ''

function custom_bindings
  fish_vi_key_bindings
  bind -M insert -m default jk backward-char force-repaint
  bind -M insert \cc kill-whole-line force-repaint
end
set -g fish_key_bindings custom_bindings

set fish_function_path $fish_function_path "$HOME/.config/powerline/bindings/fish"
source /usr/share/powerline/bindings/fish/powerline-setup.fish
source $HOME/.config/powerline/bindings/fish/powerline-setup.fish
powerline-setup

neofetch
