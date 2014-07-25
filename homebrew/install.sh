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
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew install grc coreutils spark vim brew-cask git git-flow-avh tmux maven reattach-to-user-namespace python zsh
brew cask install java7

exit 0
