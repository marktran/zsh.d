export ALTERNATE_EDITOR=""
export EMAIL='Mark Tran <mark.tran@gmail.com>'
export HOST="$(hostname)"
export HOST="${HOST%%.*}"
export LS_COLORS='di=32:fi=0:ln=35:pi=5:so=5:bd=5:cd=5:or=31'
export LSCOLORS="cxfxcxdxbxegedabagacad"
export NODE_PATH='/usr/local/lib/node'
export PAGER='less'
export PIP_RESPECT_VIRTUALENV='true'
export PIP_VIRTUALENV_BASE="$WORKON_HOME"
export PYTHONSTARTUP="$HOME/.pythonrc"
export READNULLCMD='cat'
export SSH_ENV="$HOME/.ssh/environment"
export UNAME="$(uname)"
export WORKON_HOME="$HOME/.virtualenvs"

fpath=(/usr/local/share/zsh-completions $fpath)
[[ "$ORIGPATH" == "" ]] && export ORIGPATH=$PATH
export PATH="$HOME/bin:\
/usr/local/bin:\
/usr/local/sbin:\
/opt/local/bin:\
/opt/local/sbin:\
$ORIGPATH"
