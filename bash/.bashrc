#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# set user defined path
if [ -d "$HOME/bin" ] ; then
        export PATH="$HOME/bin:$PATH"
fi

# set default editor to Vim
export EDITOR='vim'
export VISUAL='vim'

# start ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi

# load aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
