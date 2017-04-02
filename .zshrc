export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export EDITOR="editor --no-window-system"

source "$HOME/.zsh/gpg.zsh"
source "$HOME/.zsh/aliases.zsh"
source "$HOME/.zsh/functions.zsh"
source "$HOME/.zsh/git.zsh"
source "$HOME/.zsh/nvm.zsh"
source "$HOME/.zsh/keyboard.zsh"

export PATH="/usr/local/opt/gnupg/libexec/gpgbin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="$PATH:$HOME/.rbenv/bin"
export PATH="$HOME/.zsh/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export FPATH="$FPATH:/usr/local/share/zsh-completions"
export FPATH="$FPATH:/usr/share/zsh/site-functions"
export FPATH="$FPATH:$HOME/.zsh/completions"

typeset -U PATH FPATH

autoload -U compinit colors
compinit && colors

unalias run-help
autoload run-help
export HELPDIR="/usr/local/share/zsh/helpfiles"

setopt PROMPT_SUBST
setopt AUTO_LIST
setopt MENU_COMPLETE
setopt COMPLETE_IN_WORD
setopt HIST_IGNORE_ALL_DUPS
setopt EXTENDED_HISTORY

# by default, ZSH will generate the filenames and throw an error before executing the command if it founds no matches.
unsetopt nomatch

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

export PROMPT=$'\n%F{yellow}%.%  %F{cyan}λ%f '

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=4096
export SAVEHIST=4096
export HISTCONTROL="ignoreboth"

export GREP_OPTIONS="--color=auto --exclude-dir=.git"
export LESS="--RAW-CONTROL-CHARS"

eval "$(rbenv init -)"

export GOPATH="$HOME/.go-lang"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"
export PATH="$PATH:$GOPATH/bin"
