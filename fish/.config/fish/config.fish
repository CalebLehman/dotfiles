set -g -x fish_greeting ''

# Open into tmux session
if status is-interactive
and not set -q TMUX
  tmux new-session -A -s main
end

# Setup vi-style bindings
set -g fish_key_bindings custom_bindings

# Setup various environment managers
if type -q nodenv
  status --is-interactive; and source (nodenv init -|psub)
end

# Setup conda, if available
if type -q conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/clehman/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
end

# Set git prompt option(s)
set -g check_git_status
