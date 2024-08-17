
# use colorful terminal
autoload -Uz colors
colors

# disable ^D to logout
setopt IGNORE_EOF
# disable ^S to stop and ^Q to start
setopt no_flow_control

# set editor to vim
export EDITOR=vim

# use emacs-like keybind
bindkey -e

# enable completion
autoload -Uz compinit
compinit
# use arrow key to auto complete
zstyle ':completion:*' menu select

# don't save if commands are duplicated
setopt hist_ignore_all_dups

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000


# execute pushd automatically when cd executed
setopt auto_pushd

# delete duplicated stacks
setopt pushd_ignore_dups

# correct spelling mistakes
setopt correct


# 区切り文字の設定
autoload -Uz select-word-style
select-word-style default
zstyle ':zle:*' word-chars " _-/.;@"
zstyle ':zle:*' word-style unspecified



# git設定
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!%f"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+%f"
zstyle ':vcs_info:*' formats "%F{blue}[%b]%f%u%c"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# show user name, server name, current direcctory, git info, and the user is root or not on left prompt
# show the time the command was executed on right
NEWLINE=$'\n'
PROMPT="${NEWLINE}%F{046}%n@%m%f %F{white}%f%F{012}%~%f%F{white} > %f${vcs_info_msg_0_}${NEWLINE}%F{white}%# %f"
#RPROMPT="%F{green}%D{%Y-%m-%d %H:%M:%S}%f"
RPROMPT="%F{046}%D{%m-%d %H:%M}%f"


# 補完後、メニュー選択モードになり左右キーで移動が出来る
zstyle ':completion:*:default' menu select=2

# 補完で大文字にもマッチ
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Ctrl+rでヒストリーのインクリメンタルサーチ、Ctrl+sで逆順
bindkey '^r' history-incremental-pattern-search-backward
bindkey '^s' history-incremental-pattern-search-forward

# コマンドを途中まで入力後、historyから絞り込み
# 例 ls まで打ってCtrl+pでlsコマンドをさかのぼる、Ctrl+bで逆順
#autoload -Uz history-search-end
#zle -N history-beginning-search-backward-end history-search-end
#zle -N history-beginning-search-forward-end history-search-end
#bindkey "^p" history-beginning-search-backward-end
#bindkey "^b" history-beginning-search-forward-end

# cdrコマンドを有効 ログアウトしても有効なディレクトリ履歴
# cdr タブでリストを表示
autoload -Uz add-zsh-hook
autoload -Uz chpwd_recent_dirs cdr
add-zsh-hook chpwd chpwd_recent_dirs
# cdrコマンドで履歴にないディレクトリにも移動可能に
zstyle ":chpwd:*" recent-dirs-default true

# 複数ファイルのmv 例　zmv *.txt *.txt.bk
autoload -Uz zmv
alias zmv='noglob zmv -W'

# mkdirとcdを同時実行
function mkcd() {
	if [[ -d $1 ]]; then
		echo "$1 already exists!"
		cd $1
	else
		mkdir -p $1 && cd $1
	fi
}



# load my aliases
source ~/dotfiles/alias

alias reload='source ~/.zshrc'

