# ~/.bash_aliases

# ls
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -la'

# simple todo 
alias todo='vim /home/rad/todo.md'

# notebook shortcut
alias nb='notebook.sh'

# test a .zip archive
alias zt='unzip -tq'

# shows .zip archive details
alias zi='unzip -Z'

# turns default nordnm config on and off
alias nmon='sudo nordnm sync -k -a US normal tcp'
alias nmoff='sudo nordnm r -ack'

# quicker journal
alias jrnl='logbook.sh $HOME/documents/journal'
alias lgbk='logbook.sh $HOME/documents/logbook'
