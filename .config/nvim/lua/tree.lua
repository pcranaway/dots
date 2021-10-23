local utils = require('utils')

require'nvim-tree'.setup {
  open_on_setup       = false,
  auto_close          = true,
  hijack_cursor       = true,
  update_cwd          = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "H",
      info = "i",
      warning = "!",
      error = "E",
    }
  },
  view = {
    auto_resize = true,
  }
}

utils.map('n', '<C-n>', ':NvimTreeToggle<CR>')
utils.map('n', '<leader>r', ':NvimTreeRefresh<CR>')
utils.map('n', '<leader>n', ':NvimTreeFindFile<CR>')
