set nocompatible
filetype off

" general settings.
set ttyfast
set copyindent
set autoindent
set lazyredraw
set smartindent
set rnu
set hidden
set hlsearch
set incsearch
set wildmenu
set expandtab
set cmdheight=2
set mouse=a

set shiftwidth=4
set ignorecase
set smartcase
set hlsearch
set sw=4 ts=4 sts=4
set expandtab
set backspace=2
set wrap lbr

" enable syntax highlighting.
filetype on
filetype plugin indent on

" map leader key to space bar.
let mapleader = "\<Space>"

noremap ; :

vnoremap < <gv
vnoremap > >gv
