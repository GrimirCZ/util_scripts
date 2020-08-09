# Utility Shell Scripts

This is a compilation of my utility shell scripts.
All the scripts are written for a bash-compatible shell.

## Installation

1. Clone the repository
> git clone https://github.com/GrimirCZ/util_scripts.git
2. Install scripts to $HOME/.local/scripts and add $HOME/.local/scripts to your path
    - Bash shell
      > ./install.bash
    - Fish shell
      > ./install.fish

## Show wifi password

This script retrieves wifi password from __NetworkManager__

Depends on:
  - __NetworkManager__ being used for managing networking
  - _nmcli_ being installed

Usage:
> show_wifi_pass <Network_Name>

Returns:
  - wifi password on success
  - _nmcli_ error code and error message
