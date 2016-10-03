#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.
 
# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts
brew tap osx-cross/avr

# Generic
brew install grc coreutils spark vim brew-cask tmux wget zsh

# Dev
brew install maven nodenv python git git-flow-avh avr-libc dfu-programmer perl
brew cask install java7 java8
brew cask install keybase spectacle

# Fonts
brew cask install font-inconsolata

exit 0
