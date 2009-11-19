# -*- Mode: Shell-script; -*-
# .zsh/30_aliases : Mark Tran <mark@nirv.net>

alias ^L=clear
alias ack="$(whence ack-grep || whence ack) --nocolor"
alias ls="ls -F"
alias m=mplayer
alias rm="rm -i"
alias sourcerc=". ~/.zsh/.zshrc"
alias startx="startx 2>&1|tee ~/var/log/startx.log"
alias xargs="$(whence gxargs || whence xargs)"

alias -g A="| ack"
alias -g L="| less"
alias -g X="| xargs -i"
alias -g XR="| xargs -i unrar x {}"

# radio streams
alias bbc="mplayer -cache-min 4 -playlist \
http://www.bbc.co.uk/worldservice/meta/tx/nb/live_news_au_nb.ram"
alias mpr="mplayer -cache-min 4 \
http://newsstream1.publicradio.org:80/"
alias npr="mplayer -cache-min 4 \
http://scfire-chi-aa01.stream.aol.com:80/stream/1062"
