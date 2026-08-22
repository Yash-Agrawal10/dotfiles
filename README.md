# Yash's Dotfile Repo

## Dotfiles

The actual dotfiles are all in the dofiles directory. They are organized by application. Their actual locations are defined in config.yaml.

To install the dotfiles into their proper locations do the following:

1. Install dotdrop:
- macOS: `brew install dotdrop`
- Debian/Ubuntu: `sudo apt install dotdrop`
2. From the repo root, run `dotdrop install`

## Install

The install directory contains srcipts that make it easier to install tools and applications.

### Brewfile

Brewfile contains generic tools that can be installed on both macOS and Linux. It consists of tools generically useful for terminal work and should be installed on any machine, including ones accessed only through SSH.

To install, run: `brew bundle install --file=install/Brewfile`

### Brewfile.casks

Brewfile.casks contains brew casks, which means it can only be run on MacOS. It mostly contains GUI applications that should not be installed on SSH-only setups, although there are some exceptions.

To install, run: `brew bundle install --file=install/Brewfile.casks`
