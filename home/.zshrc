# Yash's .zshrc

# Zsh plugins w/ Antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load
source ~/.zsh_plugins.zsh

# Shell prompt w/ Starship
eval "$(starship init zsh)"

# Aliases for modern CLI tools
alias cat="bat"
alias ls="eza"
