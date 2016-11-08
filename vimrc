"----------
"	PREAMBLE
"----------
set nocompatible " be iMproved
filetype off " required!

"----------
" VUNDLE
"----------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vale1410/vim-minizinc'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-markdown'

call vundle#end()

syntax on
filetype plugin indent on " required!

"----------
" VIM SETTINGS
"----------
set magic                   " Enable extended regexes
set hlsearch                " highlight searches
set incsearch               " show the `best match so far' astyped
set ignorecase smartcase    " make searches case-insensitive, unless they
                            "   contain upper-case letters

set t_Co=256                " 256 colors terminal
set number                  " Enable line numbers
set showmatch               " show matching parenthesis
set title                   " Show the filename in the window title bar

set autoindent smartindent      " auto/smart indent
set copyindent                  " copy previous indentation on auto indent
set softtabstop=2               " Tab key results in # spaces
set tabstop=2                   " Tab is # spaces
set shiftwidth=2                " The # of spaces for indenting.

"----------
" SYNTASTIC
"----------

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
