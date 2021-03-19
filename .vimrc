" general settings
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
set updatetime=300

" custom mappings
noremap ; :

vnoremap < <gv
vnoremap > >gv

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nnoremap <C-n> :CocCommand explorer<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-@> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'neoclide/coc.nvim'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
call vundle#end()

" syntax
syntax on

" statusline
set laststatus=2
