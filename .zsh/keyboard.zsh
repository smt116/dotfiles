export WORDCHARS='*?[]~=&!#$%^(){}<>'

bindkey -e
bindkey "\e\e[D" backward-word    # alt + <-
bindkey "\e\e[C" forward-word     # alt + ->
bindkey '^[[H' beginning-of-line  # fn  + <-
bindkey '^[[F' end-of-line        # fn  + ->
