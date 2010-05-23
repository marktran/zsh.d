# -*- Mode: Shell-script; -*-
# .zsh/10_options : Mark Tran <mark@nirv.net>

umask 022

HISTSIZE=2000
SAVEHIST=2000
HISTFILE=$HOME/.zhistory

setopt ALL_EXPORT
setopt APPEND_HISTORY
setopt AUTO_CD
setopt AUTO_PUSHD
setopt BRACE_CCL
setopt EXTENDED_HISTORY
# setopt EXTENDED_GLOB
setopt HIST_IGNORE_ALL_DUPS
setopt NOMATCH
setopt NOTIFY
setopt RM_STAR_SILENT

setopt NO_BEEP
unset MAILCHECK
