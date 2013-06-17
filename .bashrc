bash ~/.bash_profile

PS1='\[\033[01;34m\]#\w \[\033[01;32m\]$ \[\033[00m\]'

PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:~/.shelly-dev

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

alias grep='grep --color=auto'
alias rgrep='grep -r --color'

alias 'df'='df -h'
alias 'duu'='du -h --max-depth=1'

alias 'll'='ls -alFh --color'
alias 'l'='ls -lFh --color'
alias 'c'='clear'
alias 'cl'='c;l;'

alias 'sigma'='ssh mmalecki@sigma.ug.edu.pl'

alias '..'='cd ..'
alias '~~'='cd ~'

alias 'shelly_st'='RUBYLIB=~/ragnarson/shelly/shelly/lib SHELLY_URL=https://api.testing.shellycloud.com/apiv2 ~/ragnarson/shelly/shelly/bin/shelly'
alias 'be'='bundle exec'
