# Dotfiles! #

*You like em, you love em!*

## Useage ##

Each group of dotfiles should have it's own folder.
For example, `.bashrc` and `.bash_aliases` should both go in a directory called `bash`.

Each directory should be organized as it would be in the $HOME directory. For example: 
* Vim's config file is `vimrc` and is a hidden file in the $HOME directory, so Vim's dotfile folder structure is `dotfiles/vim/.vimrc`. 
* Ranger's config file belongs in $HOME/config, so Ranger's dotfile folder structure is `dotfiles/ranger/.config/ranger`.

Dotfiles are deployed by symlinks via GNU Stow, which is available in the repositories of most linux distributions. To deploy Vim's dotfiles, for example:
* clone the dotfiles repository to the home folder:
```
$ git clone https://github.com/veryrad/dotfiles
```
* archive existing dotfiles (if applicable) 
```
$ mv ~/.vimrc ~/.vimrc.bkp
```
* use GNU stow to crate symlinks
```
$ cd ~/dotfiles
$ stow vim
```


