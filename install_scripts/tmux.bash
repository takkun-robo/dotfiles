#!/bin/bash

cat - << 'EOF' >> ~/.tmux.conf
#include my tmux.conf
source-file ~/dotfiles/tmux.conf
EOF

