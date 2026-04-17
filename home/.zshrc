# Yash's .zshrc

# Zsh plugins w/ Antidote
source $(brew --prefix)/opt/antidote/share/antidote/antidote.zsh
antidote load
source ~/.zsh_plugins.zsh

# Tab autocomplete
autoload -Uz compinit
compinit

# Shell prompt w/ Starship
eval "$(starship init zsh)"

# Enable zoxide
eval "$(zoxide init zsh)"

# Aliases for modern CLI tools
alias cat="bat"
alias ls="eza"
alias cd="z"
