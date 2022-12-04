# Editor
set --global --export EDITOR "editor"
alias e="editor"

# Use GNU programs instead of macOS's versions
fish_add_path "/opt/homebrew/opt/gnu-sed/libexec/gnubin"
fish_add_path "/opt/homebrew/opt/gnu-which/libexec/gnubin"
fish_add_path "/opt/homebrew/opt/gnu-tar/libexec/gnubin"

fish_add_path (brew --prefix curl)"/bin"
set --append --global --export CPPFLAGS "-I"(brew --prefix curl)"/include"
set --append --global --export LDFLAGS "-L"(brew --prefix curl)"/lib"
set --append --global --export PKG_CONFIG_PATH (brew --prefix curl)"/lib/pkgconfig"

fish_add_path (brew --prefix unixodbc)"/bin"
set --append --global --export CPPFLAGS "-I"(brew --prefix unixodbc)"/include"
set --append --global --export LDFLAGS "-L"(brew --prefix unixodbc)"/lib"
set --append --global --export ODBC_INCLUDE "-I"(brew --prefix unixodbc)"/include"
set --append --global --export ODBC_LIB "-L"(brew --prefix unixodbc)"/lib"

fish_add_path (brew --prefix openssl@3)"/bin"
set --append --global --export CPPFLAGS "-I"(brew --prefix openssl@3)"/include"
set --append --global --export LDFLAGS "-L"(brew --prefix openssl@3)"/lib"
set --append --global --export PKG_CONFIG_PATH ""(brew --prefix openssl@3)"/lib/pkgconfig"

# Programs' defaults
set --global --export GREP_OPTIONS "--color=auto --exclude-dir=.git"
set --global --export LESS "--RAW-CONTROL-CHARS"

# Terminal aliases
alias df='df -h'

alias ..='cd ..'
alias l='ls -lFhG'
alias ll='ls -lFhAG'

alias c='clear'
