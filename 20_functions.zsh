# .zsh.d/20_functions : Mark Tran <mark@nirv.net>

# complete notation for repeated dots
rationalise-dot() {
    if [[ $LBUFFER = *.. ]]; then
        LBUFFER+=/..
    else
        LBUFFER+=.
    fi
}
zle -N rationalise-dot
bindkey . rationalise-dot

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
