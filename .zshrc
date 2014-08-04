export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

source "$HOME/.zsh/aliases.zsh"
source "$HOME/.zsh/functions.zsh"
source "$HOME/.zsh/git.zsh"
source "$HOME/.zsh/shelly.zsh"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

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

export PROMPT=$'\n%F{grey}$(rbenv version-name) %F{yellow}%~% %F{green}$(git_prompt)%f\n %F{cyan}$%f '

export EDITOR='vim'
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=4096
export SAVEHIST=4096
export HISTCONTROL="ignoreboth"

bindkey -e
bindkey '^[[1;9C' forward-word
bindkey '^[[1;9D' backward-word

eval "$(rbenv init -)"
