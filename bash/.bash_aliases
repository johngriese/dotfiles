# ~/.bash_aliases

# ls
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -l'
alias la='ls -la'

# simple todo 
alias todo='vim /home/rad/documents/todo.md'

# test a .zip archive
alias zt='unzip -tq'

# shows .zip archive details
alias zi='unzip -Z'

# quicker journal
alias jrnl='journal.sh'

# ssh and attach tmux in one go
alias libra="ssh libra.home -t tmux a"

# show the octal permission for the file
alias perm='stat -c "%a %n" '
