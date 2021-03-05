set -g -x fish_greeting ''

# Open into tmux session
if status --is-interactive
and not set -q TMUX
  tmux new-session -A -s main
end

# Setup vi-style bindings
set -g fish_key_bindings custom_bindings

# Setup various environment managers
if command -v nodenv 1>/dev/null 2>&1
  status --is-interactive; and source (nodenv init -|psub)
end
if command -v pyenv 1>/dev/null 2>&1
  status --is-interactive; and source (pyenv init -|psub)
end
if command -v rbenv 1>/dev/null 2>&1
  status --is-interactive; and source (rbenv init -|psub)
end

# Set git prompt option(s)
set -g check_git_status
