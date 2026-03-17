" BASIC -----------------------------------------
set nocompatible
source $VIMRUNTIME/defaults.vim

syntax on
set background=dark
colorscheme elflord

" DISPLAY ---------------------------------------

set number
set relativenumber
set cursorline
set scrolloff=8

" Always show status line
set laststatus=2
" Show full path of file in status line
set statusline=%F


" INDENTATION -----------------------------------

set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent
set cindent

autocmd FileType make set noexpandtab

" SEARCH ----------------------------------------

set ignorecase
set smartcase
set incsearch
set hlsearch


" EDITING ---------------------------------------

set backspace=indent,eol,start

" Clipboard settings
if has("mac") || has("macunix")
    " macOS system clipboard
    set clipboard=unnamed
elseif has("unix")
    " Linux system clipboard
    set clipboard=unnamedplus
endif

" MAPPINGS --------------------------------------

let mapleader=" "

" save file
nnoremap <leader>w :w<CR>

" quit 
nnoremap <leader>q :q<CR>

"clear serach highlight
nnoremap <leader>h :nohlserach<CR>

" faster movement

nnoremap J 5j
nnoremap K 5k


" WINDOW NAVIGATION ------------------------------------------------

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k


" FILETYPE RULES ---------------------------------------------------

autocmd FileType c,cpp,java setlocal formatoptions+=cro

nnoremap <leader>f :%!clang-format -style=file<CR>
