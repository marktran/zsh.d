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
setopt NO_EXTENDED_GLOB
setopt HIST_IGNORE_ALL_DUPS
setopt INC_APPEND_HISTORY
setopt NO_CDABLE_VARS
setopt NOMATCH
setopt NOTIFY
setopt PROMPT_SUBST
setopt PUSHD_IGNORE_DUPS
setopt RM_STAR_SILENT
setopt SHARE_HISTORY

setopt NO_BEEP
unset MAILCHECK
unsetopt MENU_COMPLETE
