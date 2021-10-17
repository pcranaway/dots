local utils = require('utils')

vim.g.mapleader = ' '

-- convert to lua
-- map : to ;, makes it so much better
utils.map('n', ';', ':')

-- easier indentation with <, >
utils.map('n', '<', '<gv')
utils.map('n', '>', '>gv')
