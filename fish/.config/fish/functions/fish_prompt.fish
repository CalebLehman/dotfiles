function _vi_mode_prompt_set_color
  # Do nothing if not in vi mode
  if test "$fish_key_bindings" = "fish_vi_key_bindings"
    or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
    switch $fish_bind_mode
      case default
        set_color --bold yellow
      case insert
        set_color --bold green
      case replace_one
        set_color --bold green
      case visual
        set_color --bold magenta
    end
  end
end

function _vi_mode_prompt
  # Do nothing if not in vi mode
  if test "$fish_key_bindings" = "fish_vi_key_bindings"
    or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
    _vi_mode_prompt_set_color
    switch $fish_bind_mode
      case default
        echo -n 'N'
      case insert
        echo -n 'I'
      case replace_one
        echo -n 'R'
      case visual
        echo -n 'V'
    end
    set_color normal
  end
end

function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  set -l last_status $status

  # Color aliases
  set -l cyan (set_color cyan)
  set -l yellow (set_color yellow)
  set -l red (set_color red)
  set -l blue (set_color blue)
  set -l green (set_color green)
  set -l normal (set_color normal)

  # Show [venvname] if in a virtualenv
  if set -q VIRTUAL_ENV
      echo -n -s (set_color -b cyan black) '[' (basename "$VIRTUAL_ENV") ']' $normal ' '
  end

  # Show user@host
  echo -n -s $green (whoami) '@' (hostname) $normal ':'

  # Show current directory
  set -l cwd $blue(pwd | sed "s:^$HOME:~:")
  echo -n -s $cwd $normal

  # Show git branch and status
  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)

    if set -q check_git_status
      if [ (_git_is_dirty) ]
        set git_info '(' $yellow $git_branch "±" $normal ')'
      else
        set git_info '(' $green $git_branch $normal ')'
      end
    else
      set git_info '(' $red $git_branch "?" $normal ')'
    end
    echo -n -s ' · ' $git_info $normal
  end


  # Show vi mode
  echo -e ''
  _vi_mode_prompt
  echo -n ' '

  # Show actual "prompting" char
  if test $last_status = 0
    _vi_mode_prompt_set_color
    echo -e -n -s '> ' $normal
  else
    echo -e -n -s $red '> ' $normal
  end
end
