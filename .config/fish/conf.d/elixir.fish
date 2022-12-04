# Console history
set --append --global --export ERL_AFLAGS "-kernel shell_history enabled"
set --append --global --export ERL_AFLAGS "-kernel shell_history_file_bytes 1024000"

set --append --global --export KERL_CONFIGURE_OPTION "--disable-debug"
set --append --global --export KERL_CONFIGURE_OPTION "--disable-silent-rules"
set --append --global --export KERL_CONFIGURE_OPTION "--enable-darwin-64bit"
set --append --global --export KERL_CONFIGURE_OPTION "--enable-dynamic-ssl-lib"
set --append --global --export KERL_CONFIGURE_OPTION "--enable-gettimeofday-as-os-system-time"
set --append --global --export KERL_CONFIGURE_OPTION "--enable-kernel-poll"
set --append --global --export KERL_CONFIGURE_OPTION "--enable-shared-zlib"
set --append --global --export KERL_CONFIGURE_OPTION "--enable-threads"
set --append --global --export KERL_CONFIGURE_OPTION "--enable-webview"
set --append --global --export KERL_CONFIGURE_OPTION "--enable-wx"
set --append --global --export KERL_CONFIGURE_OPTION "--with-odbc="(brew --prefix unixodbc)
set --append --global --export KERL_CONFIGURE_OPTION "--with-ssl="(brew --prefix openssl@3)
set --append --global --export KERL_CONFIGURE_OPTION "--without-javac"
