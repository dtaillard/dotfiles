#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add auto-completion to git:
if [ -f "$HOME/.git-completion.sh" ]; then
    source "$HOME/.git-completion.sh"
fi

#
# Custom prompt
#

source "$HOME/.bash-prompt.sh"

#
# Shell Preferences
#

set -o vi
set -o noclobber

shopt -s cdspell

#
# Aliases
#

alias grep="grep --color=always"
alias ls="ls --color=always"

alias ll="ls -lh"
alias la="ls -lha"
alias lh="ls -lh"
alias lld="ls -lhd"

alias '..'="cd ../"
alias '...'="cd ../../"

alias c="clear"

# Typos
alias bahs="bash"
alias demsg="dmesg"
alias sl="ls"
alias ls-l="ls -l"

#
# Useful functions
#

function md5check()
{ 
  md5sum $1 | grep $2 
}

function ungit()
{  
  rm -rf "$1/.git"
}

#function minecraft()
#{
#  if [ "$TERM" = "linux" ]; then
#    echo "Minecraft must be run in a graphical environment. :P"
#  else
#    java -jar "$HOME/Minecraft.jar" 2>&1 > /dev/null
#  fi
#} 

