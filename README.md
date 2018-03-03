>Dotfiles!
>
>*You like em, you love em!*
>
># The Roster #
>bach > the legend
>i3 > totally unique and very obscure wm
>mpd > music player. phasing out for cmus
>ncmpcpp > see above.
>polybar > super handy bar
>ranger > the only way to browse files
>rofi > still migrating to this from demnu
>vim > it's a text editor
>Xresources > colors, fonts, etc.

# Useage #

Dotfiles are managed with GNU Stow

Each group of dotfiles should have it's own folder.
For example, .bashrc and .bash_aliases should both go in a directory called bash
Each directory will be a mirror of the home directory.
For example, within the vim directory there will be a vim/.config directory,
where the vim dotfiles found in ~/.config go.
