local utils = require('utils')

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

local cmp = require('cmp')

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = {
		['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
		['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
		['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' }),
	},
	sources = {
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
		{ name = 'buffer' },
	}
})

local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
local util = require 'lspconfig/util'

lsp_installer.on_server_ready(function(server)
	local opts = {}

	-- (optional) Customize the options passed to the server
	-- if server.name == "tsserver" then
	--     opts.root_dir = function() ... end
	-- end

	-- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
	server:setup(opts)
	vim.cmd [[ do User LspAttachBuffers ]]
end)

-- configs.nimlsp = {
-- 	default_config = {
-- 		cmd = {'nimlsp'},
-- 		filetypes = {'nim'},
-- 		root_dir = util.root_pattern('*.nimble'),
-- 		settings = {},
-- 	}
-- }

-- lspconfig.nimlsp.setup({})

-- spell checking
require('spellsitter').setup()

-- more bindings
utils.map('n', '<S-k>', '<cmd>lua vim.lsp.buf.hover()<cr>')
utils.map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
