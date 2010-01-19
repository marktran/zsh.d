# -*- Mode: Shell-script; -*-
# .zsh/60_interface : Mark Tran <mark@nirv.net>

# prompt
zstyle ':vcs_info:*:prompt:*' formats '%b'
PS1='%m(%35<...<%~) %(1v.%1v%f.)%(?..!%?! )%# '

function title {
    local value="${${${(V)1//\%/\%\%}//'\n'/; }//'\t'/ }"
    value="%70>...>$value%<<"

    case $TERM in
        # screen)
        #     print -Pn "\ek${value}\e\\"
        #     print -Pn "\e_${location}\e\\"
        #     ;;
        xterm*)
            if [[ -z $SSH_TTY ]]; then
                print -Pn "\e]0;$value $2\a"
            else
                print -Pn "\e]0;$value@$HOST $2\a"
            fi
            ;;
    esac
}

# chpwd is called when the current working directory is changed
function chpwd {
    ls
}

# precmd is called just before the prompt is printed
function precmd {
    psvar=()
    vcs_info 'prompt'
    [[ -n $vcs_info_msg_0_ ]] && psvar[1]="[${vcs_info_msg_0_}] "

    title "zsh" "%~"
}

# preexec is called just before any command line is executed
function preexec {
    title "$1"
}
