# Dotfiles #

## Useage ##
Each group of dotfiles has its own dotfile directory.
For example, `.bashrc` and `.bash_aliases` should both go in `dotfiles/bash`.

Each dotfile directory has the same parent directory structure as it would in `$HOME`. For example: 
* Vim's config file is `~/.vimrc`, so Vim's dotfile directory structure is `~/dotfiles/vim/.vimrc`. 
* Ranger's config file belongs in `~/.config`, so Ranger's dotfile directory structure is `~/dotfiles/ranger/.config/ranger`.

Dotfiles are deployed using Symbolic Links (symlinks) via [GNU Stow](https://www.gnu.org/software/stow/), which is available in the repositories of most linux distributions. 
For examples, to deploy the dotfiles for Vim:
* clone the repository to the home directory
```
$ git clone https://github.com/veryrad/dotfiles
```
* archive existing dotfiles (if applicable) 
```
$ mv ~/.vimrc ~/.vimrc.bkp
```
* use GNU stow to create symlinks
```
$ cd ~/dotfiles
$ stow vim
```
* verify the symlink was created and points to the proper place
```
$ cd ~/
$ ls -la
```
`.vimrc -> ~/dotfiles/vim/.vimrc` should new be in the home directory.

### Modifying Dotfiles ###

Through the magic of symlinks, you can edit dotfiels via the link source OR target. For example, you can make changes to `vimrc` by editing either `~/.vimrc` or `~/dotfiles/vim/.vimrc`. Regardless, changes can be commited using Git in `~/dotfiles`.

## Keybinds ##

### Openbox ###

Keybinds for openbox are fairly minimal compared to the stock settings.

#### Desktops ####
* `A-*` switchs to specified desktop
* `A-S-*` sends window to specified desktop 

#### Windows ####
* `A-w` closes window
* `A-space` shows the window's menu
* `A-tab` cycles through windows; `A-S-tab` cycles through in the opposite order
* `A-h/j/k/l` switches windows directionally
* `A-v` begins moving the window with the mouse
* `A-r` begins resizing the window with the mouse

#### Applications ####
* `A-d` runs dmenu
* `A-enter` runs a terminal (urxvtc)

#### System ####
* `A-S-l` locks the screen ([i3lock-fancy](https://github.com/meskarune/i3lock-fancy))

### XFCE ###
todo

## Icons ##
deploy with `stow` like everything else, but run to following line for each theme:
```
gtk-update-icon-cache -f -t ~/.icons/<theme_name>
```
