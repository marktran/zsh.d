# .zsh.d/10_exports.zsh : Mark Tran <mark@nirv.net>

export EMAIL='Mark Tran <mark.tran@gmail.com>'
export HOST=$(hostname)
export HOST=${HOST%%.*}
export LESSOPEN="|lesspipe.sh %s"
export LS_COLORS='di=32:fi=0:ln=35:pi=5:so=5:bd=5:cd=5:or=31'
export LSCOLORS="cxfxcxdxbxegedabagacad"
export PAGER=less
export PYTHONSTARTUP=$HOME/.pythonrc
export READNULLCMD=cat
export SSH_ENV=$HOME/.ssh/environment
export UNAME=$(uname)

[[ "$ORIGPATH" == "" ]] && export ORIGPATH=$PATH
export PATH=$ORIGPATH:$HOME/bin:/usr/local/bin
