# my bashrc file.

# load aliases
source ~/dotfiles/alias

alias reload='source ~/.bashrc'

# disable ^D to exit
set -o ignoreeof

# disable ^S to stop and ^Q to start
stty stop undef
stty start undef

# ^W to delete word with separator included '/'
stty werase undef
bind '"\C-w":unix-filename-rubout'

# customization of prompt
#PS1="\e]0;\w\a\n\e[32m\u@\h \e[33m\w\e[0m\n\$ "
PS1='\e]0;\w\a\n\e[38;5;46m\u@\h \e[38;5;27m\w\e[0m > \n\$ '

