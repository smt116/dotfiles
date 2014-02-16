source ~/.bash_profile
source ~/.bash_git
source ~/.bash_aliases
source ~/.bash_prv

PS1='\n\[\033[01;34m\]\w\[\033[1;33m\]$(__git_ps1 " (%s)")\n \[\033[01;32m\]$ \[\033[00m\]'

export EDITOR='vim'
