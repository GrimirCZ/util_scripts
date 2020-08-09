#!/bin/env bash

dst="$HOME/.local/scripts" 
wd=$(pwd)

if [ "$wd" = "$dst" ]; then

  echo "Skipping creation of $dst, already at $dst."
  echo "Skipping copying scripts to $dst, already at $dst."
else

  echo "Creating $dst"
  mkdir -p "$HOME/.local/scripts"

  echo "Copying scripts to $dst"
  cp -r * "$HOME/.local/scripts"
  cp -r .[^.]* "$HOME/.local/scripts"
fi

contains=$(echo $PATH | grep -o "$dst") 

if [ -z "$contains" ]; then
  echo "Adding $dst to PATH."
  set -U fish_user_paths $fish_user_paths "$HOME/.local/scripts"
else 
  echo "Skipping updating PATH, PATH already contains $dst."
fi

exit 0

