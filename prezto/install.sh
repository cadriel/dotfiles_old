#!/bin/sh
#
# Prezto
#
# This clones Prezto into your home folder ready for use.
 
# Check for Prezto
if [ ! -d "$HOME/.zprezto" ];
then
  echo "  Installing prezto for you."
  git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

exit 
