if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias 'sigma'='ssh mmalecki@sigma.ug.edu.pl'
alias 'c'='clear'
alias 'l'='c;ls -l --color'
alias 'll'='c;ls -la --color'
alias 'via'='vim -p4 main.c lib.c lib.h Makefile'
alias '_szablon'='git clone git@github.com:smt116/ANSI-C---szablon.git;mv ANSI-C---szablon/ szablon/;rm -rf szablon/.git;rm -rf szablon/README'
alias '..'='cd ..'
alias '~~'='cd ~'
alias 'who'='who | sort'
alias 'pss'='ps -u smefju'
alias 'cs'='c;git s'
