# .zsh.d/60_interface.zsh : Mark Tran <mark@nirv.net>

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats ' %F{magenta}[%F{white}%b%F{magenta}]%c%u'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr ' %F{blue}⚡'
zstyle ':vcs_info:git:*' unstagedstr ' %F{blue}⚡'

PS1='%F{red}%m%{$reset_color%} %F{magenta}%3~%{$reset_color%}${vcs_info_msg_0_}%{$reset_color%} %(1v.%1v%f.)'

function title {
    local value="${${${(V)1//\%/\%\%}//'\n'/; }//'\t'/ }"
    value="%70>...>$value%<<"

    case $TERM in
        screen)
            print -Pn "\ek${value}\e\\"
            print -Pn "\e_${location}\e\\"
            ;;
        xterm*)
            if [[ -z $SSH_TTY ]]; then
                print -Pn "\e]0;$value $2\a"
            else
                print -Pn "\e]0;$value@$HOST $2\a"
            fi
            ;;
    esac
}

function chpwd { ls }
function precmd { vcs_info; title "zsh" "%~" }
function preexec { title "$1" }
