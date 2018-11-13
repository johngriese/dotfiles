#
# ~/.bash_profile
#


# Get aliases and functions
[[ -f ~/.bashrc ]] && . ~/.bashrc

# set path
export path

# welcome message
echo "welcome to..."
echo $HOSTNAME | figlet
echo ""
fortune
echo ""
