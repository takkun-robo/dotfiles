#!/bin/bash

cat - << 'EOF' >> ~/.vimrc
"include my vimrc file if it exists
if filereadable(expand('~/dotfiles/vimrc'))
	source ~/dotfiles/vimrc
else
	set number
	colorscheme koehler
endif
EOF

cat - << 'EOF'
external colorscheme is not installed!
execute to install: git clone git@github.com:preservim/vim-colors-pencil.git
EOF

