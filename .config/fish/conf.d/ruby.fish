set --append --global --export LDFLAGS "-L/opt/homebrew/opt/libffi/lib"
set --append --global --export CPPFLAGS "-I/opt/homebrew/opt/libffi/include"
set --append --global --export PKG_CONFIG_PATH "/opt/homebrew/opt/libffi/lib/pkgconfig"

set --append --global --export LDFLAGS "-L/opt/homebrew/opt/readline/lib"
set --append --global --export CPPFLAGS "-I/opt/homebrew/opt/readline/include"
set --append --global --export PKG_CONFIG_PATH "/opt/homebrew/opt/readline/lib/pkgconfig"

alias be='bundle exec'
