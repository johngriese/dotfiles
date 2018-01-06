#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# load aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# bash prompt
PS1='[\u@\h \W]\$ '
