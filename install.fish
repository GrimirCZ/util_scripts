#!/bin/env fish

set dst "$HOME/.local/scripts" 
set wd (pwd)

if test "$wd" = "$dst"

  echo "Skipping creation of $dst, already at $dst."
  echo "Skipping copying scripts to $dst, already at $dst."
else

  echo "Creating $dst"
  mkdir -p "$HOME/.local/scripts"

  echo "Copying scripts to $dst"
  cp -r /etc/skel/* /home/user
  cp -r /etc/skel/.[^.]* /home/user
end

set contains (echo $PATH | grep -o "$dst") 

if test -z "$contains"
  echo "Adding $dst to PATH."
  set -U fish_user_paths $fish_user_paths "$HOME/.local/scripts"
else 
  echo "Skipping updating PATH, PATH already contains $dst."
end

exit 0

