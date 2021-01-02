#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.
 
# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you. Please hit <return> to continue."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install homebrew packages
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap osx-cross/avr

# Java
# brew install --cask java7

# Generic
brew install grc coreutils spark vim tmux wget zsh

# Dev
brew install nodenv python git git-flow-avh avr-gcc dfu-programmer perl

# Fonts
brew install --cask font-inconsolata

# Apps
# brew install --cask iina

exit 0
