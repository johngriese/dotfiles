# Dotfiles #

## Useage ##
Each application has its own dotfile directory.
For example, `.bashrc` and `.bash_aliases` should both go in `dotfiles/bash`.

Each dotfile directory has the same parent directory structure as it would in `$HOME`. For example: 
- Vim's config file is `~/.vimrc`, so Vim's dotfile directory structure is `~/dotfiles/vim/.vimrc`. 
- Ranger's config file belongs in `~/.config`, so Ranger's dotfile directory structure is `~/dotfiles/ranger/.config/ranger`.

Dotfiles are deployed using Symbolic Links (symlinks) via [GNU Stow](https://www.gnu.org/software/stow/), which is available in the repositories of most linux distributions. 
For examples, to deploy the dotfiles for Vim:
Clone the repository to the home directory
```
$ git clone https://github.com/veryrad/dotfiles
```
Archive existing dotfiles (if applicable) 
```
$ mv ~/.vimrc ~/.vimrc.bkp
```
Use GNU stow to create symlinks
```
$ cd ~/dotfiles
$ stow vim
```
Verify the symlink was created and points to the proper place
```
$ cd ~/
$ ls -la
```
`.vimrc -> ~/dotfiles/vim/.vimrc` should new be in the home directory.

### Modifying Dotfiles ###

You can edit dotfiles via the link source or the target. 
For example, you can make changes to `vimrc` by editing either `~/.vimrc` or `~/dotfiles/vim/.vimrc`. 
Regardless, changes can be commited using Git in `~/dotfiles`.
