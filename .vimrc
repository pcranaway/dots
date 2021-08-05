""""""""""""""""""""""""""""""""
"            UI                "
""""""""""""""""""""""""""""""""

" relational numbers (fun fact, I don't take advantage of them,
" but now it looks weird if they're not there)
set rnu

" synrax stuff
syntax on

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

" use tabs on makefiles, and something else on assembly files (is that even the
" assembly file format?)
autocmd FileType make setlocal noexpandtab
autocmd FileType asm setlocal noexpandtab sw=8 ts=8 sts=8

" spell checking :heart:
" autocmd BufRead *.gr.*tex setlocal spell spelllang=el

" automatically re-read file if it changed while it's open (doesn't work lol)
set autoread
