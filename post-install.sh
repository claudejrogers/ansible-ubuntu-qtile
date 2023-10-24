#!/bin/sh

# Clean up
log "Cleaning up" "info"
sudo apt autoremove -y

# Switch shell to zsh
log "Switching shell to zsh and installing oh-my-zsh" "info"
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
