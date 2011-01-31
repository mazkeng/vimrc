set autoindent
set nocompatible
set number
set tabstop=4
set expandtab

"バッックアップ、スワップファイルを作成しない
set nobackup

"Syntax
syntax on

"
" 検索
"
set wrapscan
set hlsearch

"
" 表示設定
"
"コマンドラインの高さ
set cmdheight=2
set laststatus=2
"コマンドをステータスに表示
set showcmd
"ステータスライン設定
set statusline=[%n]%1*%m%*%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y%t\ %=%-11(%3l/%3L,%3c%V%)\ %4P

"
" vim script
"
"ファイルを開いた時に前回位置にカーソルを移動
augroup vimrcEx
    autocmd!
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line('$') |
        \   exe "normal! g`\"" |
        \ endif
augroup END
