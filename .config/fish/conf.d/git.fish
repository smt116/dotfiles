function g --wraps git
  if count $argv > /dev/null
    git $argv
  else
    git status --short --branch
  end
end

function gc --argument-names "message" --wraps git
  if test -n "$message"
    git commit --message $message
  else
    git commit --verbose
  end
end

function gf --argument-names "sha" --wraps git
  if test -n "$sha"
    git diff-tree --no-commit-id --name-only -r $sha
  else
    git diff-tree --no-commit-id --name-only -r HEAD
  end
end
