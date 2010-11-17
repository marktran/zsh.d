# .zsh.d/10_options.zsh : Mark Tran <mark@nirv.net>

umask 022

HISTSIZE=2000
SAVEHIST=2000
HISTFILE=$HOME/.zhistory
WORDCHARS=''

setopt ALL_EXPORT
setopt APPEND_HISTORY
setopt ALWAYS_TO_END
setopt AUTO_CD
setopt AUTO_NAME_DIRS
setopt AUTO_PUSHD
setopt BRACE_CCL
setopt COMPLETE_IN_WORD
setopt EXTENDED_HISTORY
# setopt EXTENDED_GLOB
setopt HIST_IGNORE_ALL_DUPS
setopt NOMATCH
setopt NOTIFY
setopt PUSHD_IGNORE_DUPS
setopt RM_STAR_SILENT

setopt NO_BEEP
unset MAILCHECK
unsetopt MENU_COMPLETE
