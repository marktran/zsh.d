# .zsh.d/30_aliases.zsh : Mark Tran <mark@nirv.net>

alias ^L=clear
alias ack="$(whence ack-grep || whence ack) --nocolor"
alias awk="$(whence gawk || whence awk)"
alias m=mplayer
alias rm="rm -i"
alias sfv="cksfv -g *.sfv"
alias sourcerc=". ~/.zsh.d/.zshrc"
alias startx="startx 2>&1|tee ~/var/log/startx.log"
alias xargs="$(whence gxargs || whence xargs)"

alias -g A="| ack"
alias -g L="| less"
alias -g X="| xargs -i"
alias -g XR="| xargs -i unrar x {}"

# radio streams
alias bbc="mplayer -cache-min 4 -playlist \
http://www.bbc.co.uk/worldservice/meta/tx/nb/live_news_au_nb.ram"
alias kqed="mplayer -cache-min 4 \
            http://kqed-ice.streamguys.org:80/kqedradio-ew-e1"
alias ipr="mplayer -cache-min 4 http://voxsc1.somafm.com:8070"
alias mpr="mplayer -cache-min 4 http://newsstream1.publicradio.org:80/"
alias npr="mplayer -cache-min 4 http://npr.ic.llnwd.net/stream/npr_live24"

# OS-specific settings
function alias_BSD() {
    alias ls="ls -FG"
}

function alias_GNU() {
    alias ls="ls -F --color"
}

case $UNAME in
    Darwin) alias_BSD ;;
    FreeBSD) alias_BSD ;;
    Linux) alias_GNU ;;
esac
