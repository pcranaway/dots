local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'glacambre/firenvim'

-- lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'lewis6991/spellsitter.nvim'

-- completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

-- snippets
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

-- file management
Plug 'nvim-telescope/telescope.nvim'
Plug 'kevinhwang91/rnvimr'

-- color scheme
Plug 'wadackel/vim-dogrun'
Plug 'nanotech/jellybeans.vim'
Plug 'AlessandroYorba/Sierra'
Plug 'AlessandroYorba/Alduin'
Plug 'romainl/Apprentice'
Plug 'flazz/vim-colorschemes'
Plug 'cseelus/vim-colors-lucid'
Plug 'nvim-treesitter/nvim-treesitter'

-- statusline
Plug 'itchyny/lightline.vim'

-- tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

-- neovim lua development
Plug 'tjdevries/nlua.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'MunifTanjim/nui.nvim'

Plug 'github/copilot.vim'

-- attention
Plug 'andweeb/presence.nvim'

-- file formats and languages
Plug 'lervag/vimtex'
Plug 'alaviss/nim.nvim'

-- utilities
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'

vim.call('plug#end')
