function nvm() {
  if [ -z "$NVM_DIR" ]; then
    export NVM_DIR="$HOME/.nvm"
    source $(brew --prefix nvm)/nvm.sh
  fi

  $0 $@
}
