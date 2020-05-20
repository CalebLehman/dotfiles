# vi style bindings
function custom_bindings
  fish_vi_key_bindings
  bind -M insert -m default jk backward-char force-repaint
  bind -M insert \cc 'commandline ""'
end

