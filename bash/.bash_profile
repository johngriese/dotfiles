#
# ~/.bash_profile
#


# Get aliases and functions
[[ -f ~/.bashrc ]] && . ~/.bashrc

# set path
export path

# starts x automatically for tty1
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
          exec startx
fi

# welcome message
echo "welcome to..."
echo $HOSTNAME | figlet
echo ""
fortune
echo ""
