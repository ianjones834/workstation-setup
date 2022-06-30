syntax on

set backspace=indent,eol,start
set relativenumber
set nowrap
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent
set expandtab
set incsearch
set smartcase
set ignorecase
set noswapfile
set nobackup
set ruler
set laststatus=2

let mapleader = " "

imap kj <ESC>

nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s
nnoremap <leader>q <C-w>q
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

vnoremap K :m '<-2<CR>gv
vnoremap J :m '>+1<CR>gv

call plug#begin('~/.vim/plugged')
  Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
set background=dark

