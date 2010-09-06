# .zsh/50_modules : Mark Tran <mark@nirv.net>

autoload -U url-quote-magic
zle -N self-insert url-quote-magic

autoload -U vcs_info
autoload -U zargs
autoload -U zcalc
autoload -U zmv
