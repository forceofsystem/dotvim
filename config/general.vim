vim9script
var mapleader = ' '

set number
set relativenumber
set encoding=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
# set softtabstop=4
set scrolloff=5

set wrap
set wildmenu # display a menu when enter vim command
set smartcase
set nocompatible
set cursorline
set hidden

set updatetime=50
set textwidth=0
set indentexpr=
set autochdir
set autowrite
set sms
set backspace=indent,eol,start
set foldmethod=manual
set autoindent
set showcmd
set laststatus=0

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set hlsearch
set incsearch
exec "nohlsearch"
noremap <LEADER><CR> :nohlsearch<CR>

if has('termguicolors')
    set termguicolors
endif

augroup Format-Options
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    # This can be done as well instead of the previous line, for setting formatoptions as you choose:
    autocmd BufEnter * setlocal formatoptions=crqn2l1j
augroup END

# 打开文件时光标放在上次退出的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
