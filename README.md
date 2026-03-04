# Yash's Dotfile Repo

## Things to install

### CLI Tools
antidote
starship
bat
eza

### Applications
iterm2

## Installation
cd <path/to/dotfiles/repo>
stow -t ~ home

## Specific Tool Notes

### Shell
I use zsh

### Antidote
To generate plugins run:
antidote bundle < ~/.config/zsh/plugins.txt > "$ANTIDOTE_HOME/bundle.zsh"
