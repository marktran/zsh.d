# .zsh.d/50_modules.zsh : Mark Tran <mark@nirv.net>

autoload -U colors && colors
autoload -U edit-command-line
autoload -U url-quote-magic

autoload -U vcs_info
autoload -U zargs
autoload -U zcalc
autoload -U zmv

zle -N self-insert url-quote-magic
zle -N edit-command-line
