set -g -x fish_greeting ''

function custom_bindings
  fish_vi_key_bindings
  bind -M insert -m default jk backward-char force-repaint
  bind -M insert \cc 'commandline ""'
end
set -g fish_key_bindings custom_bindings

if type -q neofetch
  neofetch
end
