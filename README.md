# Dotfiles! #

## Useage ##

Each group of dotfiles has its own directory.
For example, `.bashrc` and `.bash_aliases` should both go in a directory called `bash`.

Each directory should be organized in parent directories as it would be in the `$HOME` directory. 
For example: 
* Vim's config file is `vimrc` and is a hidden file in the `$HOME` directory, so Vim's dotfile folder structure is `dotfiles/vim/.vimrc`. 
* Ranger's config file belongs in `$HOME/.config`, so Ranger's dotfile folder structure is `dotfiles/ranger/.config/ranger`.

Dotfiles are deployed by symlinks via [GNU Stow](https://www.gnu.org/software/stow/), which is available in the repositories of most linux distributions. 
For examples, to deploy the dotfiles for Vim:
* clone the repository to the home folder
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
There should  be `.vimrc -> dotfiles/vim/.vimrc` in the home directory.
