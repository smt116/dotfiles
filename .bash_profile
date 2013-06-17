export HISTSIZE=10000
export HISTFILESIZE=10000

if `tty -s`;
then
  mesg n
  echo "HAVE FUN!"
fi

#rm -rf ~/tmp/* &
rm -rf ~/.xsession-errors &
