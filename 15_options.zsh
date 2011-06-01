# .zsh.d/15_options.zsh : Mark Tran <mark@nirv.net>

umask 022

HISTSIZE=4096
SAVEHIST=4096
HISTFILE=$HOME/.zsh_history
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
setopt EXTENDED_GLOB
setopt HIST_IGNORE_ALL_DUPS
setopt NOMATCH
setopt NOTIFY
setopt PROMPT_SUBST
setopt PUSHD_IGNORE_DUPS
setopt RM_STAR_SILENT

setopt NO_BEEP
unset MAILCHECK
unsetopt MENU_COMPLETE
