#!/usr/bin/env bash

# create and change dir
mcd () {
  mkdir -p "$1"
  cd "$1"
}

# auto cd
shopt -s autocd
# allow ** patterns
shopt -s globstar

# History
# TODO separate in a history file
export HISTSIZE=10000
HISTCONTROL=ignoreboth
shopt -s histappend
# After each command, save and reload history
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# show date/time of each command in history
export HISTTIMEFORMAT='%F %T : '

# swap two files
swap() {
  local TMPFILE=tmp.$$
  mv "$1" $TMPFILE
  mv "$2" "$1"
  mv $TMPFILE "$2"
}

# calculator: "? 3+13*3" will print 42
? () { echo "$*" | bc -l; }

# Checks existence of a command
command_exists () { type "$1" &> /dev/null ; }

# Run command silently
quiet () { $* &> /dev/null & }

# Creates a backup of a file
backup () {
  local filename=$1
  local filetime=$(date +%Y%m%d_%H%M%S)
  cp ${filename} ${filename}_${filetime}
}

stty stop ''
