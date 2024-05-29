# my bashrc file.

# aliases
alias ls='ls -F --color=auto'
alias ll='ls -alF'
alias la='ls -AF'
alias l='ls -CF'

alias gr='grep'

alias ..='cd ../'
alias ..2='cd ../../'

alias t='touch'

alias cp='cp -i'
alias mv='mv -i'
#alias rm='rm -i'

alias v='vim'
alias vd='vimdiff'

alias tm='tmux'
alias tml='tmux ls'
alias tma='tmux attach'

alias g='git'
alias ga='git add'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias gcm='git commit -m'
alias gf='git fetch'
alias gm='git merge'
alias gpsh='git push'
alias gpll='git pull'

alias reload='source ~/.bashrc'

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
