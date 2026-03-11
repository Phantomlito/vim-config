set nocompatible
source $VIMRUNTIME/defaults.vim

syntax on
set background=dark
colorscheme default

set number
set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent
set cindent
autocmd FileType make set noexpandtab
autocmd FileType c,cpp,java setlocal formatoptions+=cro

