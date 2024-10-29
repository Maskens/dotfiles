My dotfiles

# Setup

# Prerequisites

# Install git

    brew install git

# Install stow

    brew install stow

# Install iterm2 using brew   


Download and set iterm2 theme
https://github.com/rojadesign/iTerm2-Tokyo-Night-Color-Theme-by-rojadesign

## Nerd font
Install nerd font for nvim tab bar

    brew install font-hack-nerd-font

Download nerd font https://www.nerdfonts.com/font-downloads and set it in iterm2

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
