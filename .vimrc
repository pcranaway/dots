""""""""""""""""""""""""""""""""
"            UI                "
""""""""""""""""""""""""""""""""

" relational numbers (fun fact, I don't take advantage of them,
" but now it looks weird if they're not there)
# set rnu

" syntax stuff
syntax on

set hlsearch
colorscheme darkblue

" color scheme
" colorscheme railscasts

function! Light()
    set background=light
    colorscheme intellij
endfunction

command Light call Light()

""""""""""""""""""""""""""""""""
"         MAPPPINGS            "
""""""""""""""""""""""""""""""""

" map leader key to space
let mapleader = " "

" map : to ;, makes it so much better
noremap ; :

" easier indentation with <, >
vnoremap < <gv
vnoremap > >gv

" pane stuff
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

nnoremap <C-r><C-h> :vertical resize -4<CR>
nnoremap <C-r><C-l> :vertical resize +4<CR>
nnoremap <C-r><C-k> :resize +4<CR>
nnoremap <C-r><C-j> :resize -4<CR>

" iirc this formats very long lines into multiple, smaller ones (godlike
" feature) (I don't even use it, I literally still use gq)
nnoremap Q gq

" copy the rest of the line after current character
nnoremap Y y$

" put find results on the same line as the cursor (same with J)
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

""""""""""""""""""""""""""""""""
"         FORMATTING           "
""""""""""""""""""""""""""""""""

" use 4 character wide tabs even though it looks more like 8
set sw=4 ts=4 sts=4
set expandtab
set tabstop=4

set textwidth=72

" use tabs on makefiles, and something else on assembly files (is that even the
" assembly file format?)
autocmd FileType make setlocal noexpandtab
autocmd FileType asm setlocal noexpandtab sw=8 ts=8 sts=8

" spell checking :heart:
" autocmd BufRead *.gr.*tex setlocal spell spelllang=el

" automatically re-read file if it changed while it's open (doesn't work lol)
set autoread

" gotta to make use of the abbreviation feature!! (abbr <typo> <correct form>)

""""""""""""""""""""""""""""""""
"         PLUGINS              "
""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim'
Plug 'elixir-editors/vim-elixir'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-rfc'
Plug 'tpope/vim-fugitive'
Plug 'chiendo97/intellij.vim'
Plug 'tpope/vim-vinegar'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'
Plug 'gleam-lang/gleam.vim'
call plug#end()

""""""""""""""""""""""""""""""""
"         NERDTREE             "
""""""""""""""""""""""""""""""""

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

""""""""""""""""""""""""""""""""
"          FZF.VIM             "
""""""""""""""""""""""""""""""""
nnoremap <C-p><C-f> :Files<CR>
nnoremap <C-c><C-s> :Colors<CR>
nnoremap <C-p><C-b> :Buffers<CR>
nnoremap <C-p><C-g> :Commits<CR>

""""""""""""""""""""""""""""""""
"             COC              "
""""""""""""""""""""""""""""""""

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
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
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gf :CocFix<CR>

nnoremap <silent> K :call <SID>show_documentation()<CR>

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

""""""""""""""""""""""""""""""""
"         Status Line          "
""""""""""""""""""""""""""""""""

function! Quote() abort
    return substitute(system("cat ~/.quotes | sort -u | shuf | head -n1"), "\n", "", "g")
endfunction

" set laststatus=2
" set statusline=
" set statusline+=\ %l
" set statusline+=\ %*
" set statusline+=\%{Quote()}
