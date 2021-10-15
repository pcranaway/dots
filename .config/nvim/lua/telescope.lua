local utils = require('utils')

utils.map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
