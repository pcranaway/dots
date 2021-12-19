local utils = require('utils')

require'nvim-tree'.setup {
  open_on_setup       = false,
  auto_close          = true,
  hijack_cursor       = true,
  update_cwd          = true,
  diagnostics = {
    enable = false,
  },
  view = {
    auto_resize = true,
  }
}

utils.map('n', '<C-n>', ':NvimTreeToggle<CR>')
utils.map('n', '<leader>r', ':NvimTreeRefresh<CR>')
utils.map('n', '<leader>n', ':NvimTreeFindFile<CR>')
