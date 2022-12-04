fish_add_path (brew --prefix libpq)"/bin"

set --append --global --export LDFLAGS "-L"(brew --prefix libpq)"/lib"
set --append --global --export CPPFLAGS "-I"(brew --prefix libpq)"/include"
set --append --global --export PKG_CONFIG_PATH ""(brew --prefix libpq)"/lib/pkgconfig"
