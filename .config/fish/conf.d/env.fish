# Editor
set --global --export EDITOR "editor"
alias e="editor"

# Use GNU programs instead of macOS's versions
fish_add_path "/opt/homebrew/opt/gnu-sed/libexec/gnubin"
fish_add_path "/opt/homebrew/opt/gnu-which/libexec/gnubin"
fish_add_path "/opt/homebrew/opt/gnu-tar/libexec/gnubin"
fish_add_path /opt/homebrew/opt/curl/bin

# Programs' defaults
set -gx GREP_OPTIONS "--color=auto --exclude-dir=.git"
set -gx LESS "--RAW-CONTROL-CHARS"

# Terminal aliases
alias df='df -h'

alias ..='cd ..'
alias l='ls -lFhG'
alias ll='ls -lFhAG'

alias c='clear'
