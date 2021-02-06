" general settings.
set nocompatible
filetype off
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

syntax on

noremap ; :

vnoremap < <gv
vnoremap > >gv

" plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'davidhalter/jedi-vim'
call vundle#end()
