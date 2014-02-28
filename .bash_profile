export HISTSIZE=10000
export HISTFILESIZE=10000
export EDITOR='vim'
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

PS1='\n\[\033[01;34m\]\w\[\033[1;33m\]$(__git_ps1 " (%s)")\n \[\033[01;32m\]$ \[\033[00m\]'

if `tty -s`;
then
  mesg n
  echo "HAVE FUN!"
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source ~/.bashrc
