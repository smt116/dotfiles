export PATH="$HOME/.winnie-dev:$PATH"
export PATH="$HOME/shelly/winnie-app/bin:$PATH"

alias shelly_st='RUBYLIB=$HOME/shelly/shelly/lib \
  SHELLY_URL=https://api.testing.shellycloud.com/apiv2 \
  $HOME/shelly/shelly/bin/shelly'
alias shelly_local='RUBYLIB=$HOME/shelly/shelly/lib \
  $HOME/shelly/shelly/bin/shelly'
alias shelly_dev='RUBYLIB=$HOME/shelly/shelly/lib \
  SHELLY_URL=http://api.winnie-app.dev/apiv2 \
  $HOME/shelly/shelly/bin/shelly'
