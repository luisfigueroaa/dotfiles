# My Dotfiles

## Installation

According to https://wiki.archlinux.org/title/Dotfiles:

   $ git clone --bare ~/.dotfiles
   $ alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
   $ config config status.showUntrackedFiles no 

You must put your alias in your .bashrc or .zshrc.

PD: It must work with gnu stow as well (no tested yet).
