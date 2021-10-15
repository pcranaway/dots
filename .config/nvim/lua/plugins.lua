local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

-- lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

-- completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

-- snippets
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

-- telescope
Plug 'nvim-telescope/telescope.nvim'

-- color scheme
Plug 'wadackel/vim-dogrun'
Plug 'nvim-treesitter/nvim-treesitter'

-- statusline
Plug 'itchyny/lightline.vim'

-- neovim lua development
Plug 'tjdevries/nlua.nvim'
Plug 'nvim-lua/plenary.nvim'

vim.call('plug#end')
