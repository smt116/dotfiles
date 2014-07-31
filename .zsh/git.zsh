function git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo '~'
}

function git_prompt {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo ' '${ref#refs/heads/}''$(git_dirty)
}

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
