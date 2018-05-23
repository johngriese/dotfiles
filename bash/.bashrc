#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# set user defined path
PATH=$PATH:$HOME/scripts
export PATH

# sets editor to vim
export EDITOR='vim'
export VISUAL='vim'

# sets Command Line Editing Mode to Vi
set -o vi

# bash prompt
PS1='[\u@\h \W]\$ '
