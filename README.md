# Yash's Dotfile Repo

## Things to install

### CLI Tools
neovim
antidote
starship
bat
eza
tree-sitter
basictex
dotdrop

### Applications
iterm2

### Other
Rust

## Installation
Install dotdrop:
- macOS: `brew install dotdrop`
- Debian/Ubuntu: `sudo apt install dotdrop`

Then, from the repo root:
```
dotdrop install
```

Dotdrop picks the profile matching the machine's hostname automatically.

## Repo layout
Dotfiles live under `dotfiles/`, organized by tool rather than mirroring
`$HOME`'s dotted names directly. `config.yaml` maps each entry to where it
actually gets deployed (see `dotdrop files`).

## Specific Tool Notes

### Antidote
Plugin bundling is handled automatically: a dotdrop post-action regenerates
`~/.zsh_plugins.zsh` whenever `zsh_plugins.txt` is installed/updated. To run
it manually:
```
antidote bundle <~/.zsh_plugins.txt >~/.zsh_plugins.zsh
```
