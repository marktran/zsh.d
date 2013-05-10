ls --color -d . &>/dev/null 2>&1 && alias ls='ls -F --color' || alias ls='ls -FG'
alias _='sudo'
alias -- -='cd -'
alias ^L='clear'
alias ack="$(whence ack-grep || whence ack) --nocolor"
alias ag='ag --nocolor'
alias awk="$(whence gawk || whence awk)"
alias d='dirs -v'
alias c='calc -d'
alias e='emacsclient -nw -c'
alias g='hub'
alias history='history 0'
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias l='ls'
alias ll='ls -l'
alias l.='ls -d .*'
alias m='mplayer'
alias map='xargs -n1'
alias pgrep='pgrep -fiL'
alias pu='pushd'
alias po='popd'
alias rm='rm -i'
alias s='ssh'
alias sfv='cksfv -g *.sfv'
alias skim='(head -5; tail -5) <'
alias sniff='sudo ngrep -d "en0" -t "^(GET|POST) " "tcp and port 80"'
alias reload!='. ~/.zsh.d/.zshrc'
alias t='tree'

alias -g A='| ack'
alias -g X='| xargs'

alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'

alias kqed='mplayer -cache-min 4 \
            http://kqed-ice.streamguys.org:80/kqedradio-ew-e1'
alias ipr='mplayer -cache-min 4 http://voxsc1.somafm.com:8070'
alias npr='mplayer -cache-min 4 http://npr.ic.llnwd.net/stream/npr_live24'
