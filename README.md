# Yash's Dotfile Repo

## Things to install

### CLI Tools
neovim
antidote
starship
bat
eza
tree-sitter

### Applications
iterm2

### Other
Rust

## Installation
cd <path/to/dotfiles/repo>
stow -t ~ home

## Specific Tool Notes

### Antidote
To generate plugins run:
antidote bundle < ~/.config/zsh/plugins.txt > "$ANTIDOTE_HOME/bundle.zsh"
