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

" enable syntax highlighting.
syntax on
filetype on
filetype plugin indent on

" map leader key to space bar.
let mapleader = "\<Space>"

nnoremap <silent> <leader>t :term ++rows=20<CR>

noremap ; :

vnoremap < <gv
vnoremap > >gv
