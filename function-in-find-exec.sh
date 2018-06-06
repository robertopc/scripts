#!/bin/bash

# Make symlink if not exist
lnIfNE() {

  echo " abc $1 "
  if [ ! -s $1 ]; then
    ln -s $1 ~/
  fi
}
export -f lnIfNE

# Link Dotfiles
find ~/github/dotfiles/ -type f -name '.*' -exec bash -c 'lnIfNE "$0"' {} \; # mk symlinks 
