# -*- Mode: Shell-script; -*-
# .zsh/10_exports : Mark Tran <mark@nirv.net>

export EMAIL='Mark Tran <mark@nirv.net>'
export HOST=$(hostname)
export HOST=${HOST%%.*}
export LESSOPEN="|lesspipe.sh %s"
export PAGER=less
export PYTHONPATH=$HOME/lib/python
export PYTHONSTARTUP=$HOME/.pythonrc
export READNULLCMD=cat
export SSH_ENV=$HOME/.ssh/environment
export UNAME=$(uname)

[[ "$ORIGPATH" == "" ]] && export ORIGPATH=$PATH
export PATH=$ORIGPATH:$HOME/bin
