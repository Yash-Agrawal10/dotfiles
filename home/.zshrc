# Yash's .zshrc

# Zsh plugins w/ Antidote
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
source "$ANTIDOTE_HOME/bundle.zsh"

# Shell prompt w/ Starship
eval "$(starship init zsh)"

# Aliases for modern CLI tools
alias cat="bat"
alias ls="eza"
