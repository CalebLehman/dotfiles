set -g -x fish_greeting ''

# Set up vi-style bindings
set -g fish_key_bindings custom_bindings

# Set up conda, if available
if type -q conda
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/clehman/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
end

