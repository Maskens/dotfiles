My dotfiles

# Setup

# Prerequisites

# Install git

# Install stow

    brew install stow

# Clone this repo 
## In your home dir
    mkdir .dotfiles
    git clone git@github.com:Maskens/dotfiles.git .dotfiles
## Use stow to setup symlinks (plz backup existing config files i.e. .zshrc, nvim, tmux)
    cd .dotfiles
    stow .

# Tmux
## type this in terminal if tmux is already running, installs tpm among others
    tmux source ~/.tmux.conf


# Todo
Add Fish conf and remove zsh!
