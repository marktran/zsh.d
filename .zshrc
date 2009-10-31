# -*- Mode: Shell-script; -*-
# .zsh/.zshrc : Mark Tran <mark@nirv.net>
setopt EXTENDED_GLOB
for file in $ZDOTDIR/??_*~*disabled; do
  . $file
done
