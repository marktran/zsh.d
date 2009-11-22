# -*- Mode: Shell-script; -*-
# .zsh/20_initialization : Mark Tran <mark@nirv.net>

# machine/os-specific configuration
function config_darwin {
    [[ "$ORIGPATH" == "" ]] && export ORIGPATH=$PATH
    export PATH=/opt/local/bin:/opt/local/sbin:$ORIGPATH

    [[ "$ORIGMANPATH" == "" ]] && export ORIGMANPATH=$MANPATH
    export MANPATH=$ORIGMANPATH:/opt/local/share/man
}

function config_lambda {
    if [ -f "${SSH_ENV}" ]; then
        . ${SSH_ENV} > /dev/null
        ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
            start_agent;
        }
    else
        start_agent;
    fi

    [[ "$ORIGPATH" == "" ]] && export ORIGPATH=$PATH
    export PATH=$ORIGPATH:/sbin:/usr/sbin:$HOME/bin:/var/lib/gems/1.8/bin
}

case $UNAME in
    Darwin) config_darwin ;;
esac
