fish_add_path /opt/homebrew/opt/libpq/bin

set --append --global --export LDFLAGS "-L/opt/homebrew/opt/libpq/lib"
set --append --global --export CPPFLAGS "-I/opt/homebrew/opt/libpq/include"
set --append --global --export PKG_CONFIG_PATH "/opt/homebrew/opt/libpq/lib/pkgconfig"
