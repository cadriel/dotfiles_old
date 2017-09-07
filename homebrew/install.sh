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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts
brew tap osx-cross/avr

# Java
# brew cask install java7

# Generic
brew install grc coreutils spark vim tmux wget zsh

# Dev
brew install nodenv python git git-flow-avh avr-libc dfu-programmer perl

# Fonts
brew cask install font-inconsolata

# Apps
brew cask install iina

exit 0
