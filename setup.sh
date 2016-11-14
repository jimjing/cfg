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

############################
# section for bash_aliases #
############################

default_bash_aliases_config_file_name=".bash_aliases"
custom_bash_aliases_config_file_name=".bash_aliases"

# Check if default bash_aliases config exist
echo "[BASH] Installing customized bash_aliases config..."
if [ -e "$HOME/$default_bash_aliases_config_file_name" ]
then
    echo "[BASH] "$HOME/$default_bash_aliases_config_file_name" exists. Abort installing bash_aliases config."
else
    cp $root_dir/$custom_bash_aliases_config_file_name $HOME/$default_bash_aliases_config_file_name
fi
echo "[BASH] Customized bash_aliases config installed at $root_dir/$custom_bash_aliases_config_file_name"


####################
# section for tmux #
####################

default_tmux_config_file_name=".tmux.conf"
custom_tmux_config_file_name=".tmux.conf"

# Check if default tmux config exist
echo "[TMUX] Installing customized tmux config..."
if [ -e "$HOME/$default_tmux_config_file_name" ]
then
    echo "[TMUX] "$HOME/$default_tmux_config_file_name" exists. Abort installing tmux config."
else
    cp $root_dir/$custom_tmux_config_file_name $HOME/$default_tmux_config_file_name
fi
echo "[TMUX] Customized tmux config installed at $root_dir/$custom_tmux_config_file_name"
