call plug#begin('~/.vim/plugged')

Plug 'dylanaraps/wal.vim'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-python/python-syntax'
Plug 'preservim/nerdtree'

call plug#end()

" color scheme
colorscheme wal

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

vnoremap < <gv
vnoremap > >gv

" nerdtree stuff
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

