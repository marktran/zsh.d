# .zsh.d/20_functions.zsh : Mark Tran <mark@nirv.net>

# complete notation for repeated dots
rationalise-dot() {
       if [[ $KEYS = "." && $LBUFFER = *.. ]]; then
      LBUFFER+=/..
       else
      zle .self-insert "$@"
       fi
    }
zle -N self-insert rationalise-dot
zle -N rationalise-dot
bindkey . rationalise-dot

# scrub the search otherwise rationalise-dot will kill the search
#function scrub-history-incremental-search-backward () {
#    bindkey "." self-insert
#    zle .history-incremental-search-backward
#    bindkey "." rationalise-dot
#}
#zle -N scrub-history-incremental-search-backward
bindkey "^R" history-incremental-pattern-search-backward

# automatic rehash on command completion
_force_rehash() {
    (( CURRENT == 1 )) && rehash
    return 1
}

zstyle ':completion:*' completer \
    _oldlist _expand _force_rehash _complete ...

# ssh-agent
function start_agent {
   echo "Initializing new SSH Agent..."
   /usr/bin/ssh-agent | sed 's/^echo/#echo/' >! ${SSH_ENV}
   chmod 600 ${SSH_ENV}
   . ${SSH_ENV} > /dev/null
   /usr/bin/ssh-add;
}
