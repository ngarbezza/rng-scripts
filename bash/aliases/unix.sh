#!/usr/bin/env bash

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

# ls
alias ls='ls -F --color=auto'
alias l='ls -lAGh --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -A --color=auto'
alias lg='l | grep'
alias lt='l -t'
alias lz='l -S'

# rm
alias rr='rm -Rf'

# find
alias ff="find . -type f -name"

alias c='clear'
alias r='source ~/.bashrc'
alias rc='r && c'

alias map='xargs -n1'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +%T'

alias hist='history | grep'

alias reboot='sudo reboot'
alias shutdown='sudo shutdown -h now'

alias :q='exit'
alias q='exit'

alias process='ps fax | grep'
# TODO: ps faux | grep '[r]uby' for skipping the grep process itself
# cannot possible with alias, implement a function or python script

alias tf='tail -f'

alias mounted='mount | column -t'

alias +x='chmod +x'
alias 777='chmod -R 777'
alias 644='chmod -R 644'

alias k='kill -9'

alias lns='ln -sin'

alias os='cat /etc/*release | grep ^ID= | cut -d= -f2'

alias x='startx'
