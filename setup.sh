#!/bin/sh

# Author: Jim Jing
# Date: Dec 21 2014

root_dir=$PWD

###################
# section for git #
###################

default_git_config_file_name=".gitconfig"
custom_git_config_file_name="mygitconfig"

# Check if default git config exist
echo "[GIT] Installing customized git config..."
if [ -e "$HOME/$default_git_config_file_name" ]
then
    echo "[include]" >> $HOME/$default_git_config_file_name
    echo "\tpath = $root_dir/$custom_git_config_file_name" >> $HOME/$default_git_config_file_name
else
    echo "[GIT] "$HOME/$default_git_config_file_name" does not exist. Abort installing git config."
fi
echo "[GIT] Customized git config installed at $root_dir/$custom_git_config_file_name"
