# my bashrc file.

# load aliases
source ~/dotfiles/alias

alias reload='source ~/.bashrc'

# disable ^D to exit
set -o ignoreeof

# disable ^S to stop and ^Q to start
stty stop undef
stty start undef

# load ros setup script if you want
#if source ~/dotfiles/bash_etc/ros.bash;
#then
#	load_ros_setup_if_enable
#TODO: this echo is for debug. if debugging is done, remove this echo.
#	echo 'load_ros_setup_if_enable() is called.'
#fi
source ~/dotfiles/etc/bash/ros.bash;

