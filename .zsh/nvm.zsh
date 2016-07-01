function nvm() {
  if [ -z "$NVM_DIR" ]; then
    export NVM_DIR="$HOME/.nvm"
    source $(brew --prefix nvm)/nvm.sh
  fi

  $0 $@
}

function node() {
  binary_path=`nvm which default`
  eval "$binary_path"
}
