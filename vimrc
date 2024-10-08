" my .vimrc file

"include defaults.vim if it exists
if filereadable(expand('$VIMRUNTIME/defaults.vim'))
	source $VIMRUNTIME/defaults.vim
endif


" setting
" 文字コードをUFT-8に設定
set fenc=utf-8
" set End of Line Code
set fileformats=unix,dos,mac
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
"set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

" status line setting
" show buffer number, full path to file, modified flag, readonly falg, help buffer flag, preview window flag on left
" show filetype, encodings, fileformat(newline style) on left.
" show char code at cursor, cursor position on right.
" show help for :help statusline
" i used this page for reference: https://maku77.github.io/vim/settings/statusline.html
set statusline=[%n]:%F%M%r%h%w\ %<[%Y][%{&fenc!=''?&fenc:&enc}][%{&ff}]\ %=[%l/%L(%p%%)\,%02v][CODE=0x%04B]

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
"set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 自動コメントアウトを無効にする
set formatoptions-=ro
" ビープ音を可視化
"set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
"nnoremap j gj
"nnoremap k gk
" シンタックスハイライトの有効化
syntax enable
" set colorscheme
set background=dark
"set colorscheme 'pencil' if it exists
if filereadable(expand('~/.vim/colors/pencil.vim'))
	colorscheme pencil
else
	colorscheme koehler
endif


" 不可視文字を可視化(タブが「▸-」と表示される)
" i refered this web site: https://qiita.com/pollenjp/items/459a08a2cc59485fa08b
set list listchars=tab:\▸\-,trail:-,eol:↲,extends:»,precedes:«
" EOL,extends,precedesを灰色,tab,trailを灰色にする
hi NonText		ctermbg=None ctermfg=238
hi SpecialKey	ctermbg=None ctermfg=237
" Tab文字を半角スペースにする
"set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" mouse
set mouse=a
set ttymouse=xterm2

