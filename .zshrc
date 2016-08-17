export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$HOME/.zsh/bin:$PATH"
export EDITOR="editor --no-window-system"

source "$HOME/.zsh/gpg.zsh"
source "$HOME/.zsh/aliases.zsh"
source "$HOME/.zsh/functions.zsh"
source "$HOME/.zsh/git.zsh"
source "$HOME/.zsh/nvm.zsh"
source "$HOME/.zsh/keyboard.zsh"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/opt/gnupg/libexec/gpgbin:$PATH"

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
