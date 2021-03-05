function nvm
  if test -f ~/.nvm/nvm.sh
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
  else
    echo unable to find ~/.nvm/nvm.sh
    return 1
  end
end
