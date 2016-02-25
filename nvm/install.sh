#!/bin/sh
#
# Node Version Manager
#
# Define a temporary env var so our script knows where to check for the environment requirements.
export PROFILE="${ZDOTDIR:-$HOME}/.dotfiles/nvm/env.zsh"

# Check for NVM
if [ ! -f "$HOME/.nvm/nvm.sh" ]
then
  echo " Installing NVM for you."
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
fi

source ~/.nvm/nvm.sh

nvm install 4
nvm install 5
nvm alias default stable
nvm use default

exit 0
