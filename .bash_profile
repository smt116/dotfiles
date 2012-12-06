export HISTSIZE=3000
export HISTFILESIZE=1000

if `tty -s`;
then
	mesg n
	echo "HAVE FUN!"
fi

PS1='\[\033[01;34m\]#\w \[\033[01;32m\]$ \[\033[00m\]'

rm -rf ~/tmp/* &
rm -rf ~/.xsession-errors &
