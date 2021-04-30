" general settings
set termguicolors
set guicursor=
set rnu

set sw=4 ts=4 sts=4
set expandtab
set tabstop=4

autocmd FileType make setlocal noexpandtab

autocmd FileType java set 

" custom mappings
noremap ; :
vnoremap < <gv
vnoremap > >gv

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'romainl/Apprentice'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'rhysd/vim-clang-format'
call plug#end()

" color scheme
colorscheme apprentice
syntax on

" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" lsp
autocmd BufEnter * lua require'completion'.on_attach()
lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.rnix.setup{}
EOF

lua << EOF
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
local util = require 'lspconfig/util'

if not lspconfig.java_language_server then
    configs.java_language_server = {
        default_config = {
            cmd = {'/home/pcranawae/oss/java-language-server/dist/lang_server_linux.sh'};
            filetypes = {'java'};
            root_dir = function(fname)
                for _, patterns in ipairs({{'build.xml', 'pom.xml', 'settings.gradle', 'settings.gradle.kts'}, {'build.gradle', 'build.gradle.kts'}}) do
                    local root = util.root_pattern(unpack(patterns))(fname)
                    if root then return root end
                end
                return vim.fn.getcwd()
            end;
            settings = {};
        };
    }
end

lspconfig.java_language_server.setup{}
EOF

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
set shortmess+=c

" clang-format
autocmd FileType c   ClangFormatAutoEnable
autocmd FileType h   ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
autocmd FileType cc  ClangFormatAutoEnable
autocmd FileType hpp ClangFormatAutoEnable
autocmd FileType java ClangFormatAutoEnable
autocmd FileType py ClangFormatAutoEnable
