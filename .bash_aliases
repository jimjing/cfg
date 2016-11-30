## Colorize the ls output ##
alias ls='ls --color=auto'
## Use a long listing format ##
alias ll='ls -la'
## Show hidden files ##
alias l.='ls -d .* --color=auto'

## get rid of command not found ##
alias cd..='cd ..'
## a quick way to get out of current directory ##
alias ..='cd ..'
alias .,='cd ../../'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

## Create parent directories on demand ##
alias mkdir='mkdir -pv'

## Handy short cuts ##
alias h='history'
alias j='jobs -l'

## Install with apt-get ##
alias apt-get="sudo apt-get"
## Update on one command ## 
alias update='sudo apt-get update && sudo apt-get upgrade'

## Git Related ##
alias g="git"
alias gh="git h"
alias gla="git la"

## tmux ##
alias ntm="tmux new -s"

## Quickly check and edit this file ##
alias editba="vim ~/.bash_aliases && source ~/.bashrc"

## ROS Related ##
alias catm="catkin_make && source devel/setup.bash"

## Vim Related ##
alias v="vim"
