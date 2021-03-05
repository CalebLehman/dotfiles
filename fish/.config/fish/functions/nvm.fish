function nvm
  if test -f ~/.config/nvm/nvm.sh
    bass source ~/.config/nvm/nvm.sh --no-use ';' nvm $argv
  else
    echo unable to find ~/.config/nvm/nvm.sh
    return 1
  end
end
