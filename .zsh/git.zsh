function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    g ss
  fi
}

function gc {
  if [[ $# > 0 ]]; then
    git commit -m $1
  else
    git commit -v
  fi
}

function gf {
  if [[ $# > 0 ]]; then
    git diff-tree --no-commit-id --name-only -r $@
  else
    git diff-tree --no-commit-id --name-only -r HEAD
  fi
}
