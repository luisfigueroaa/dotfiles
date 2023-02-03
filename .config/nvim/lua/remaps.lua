vim.g.mapleader = " "

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- enviroment
vim.keymap.set('n', '<leader>n', '<cmd>NERDTreeToggle<cr>')
vim.keymap.set({'n', 'i', 'v'}, '<F6>', '<esc>:setlocal spell! spelllang=es,en,fr')
vim.keymap.set({'n', 'i', 'v'}, '<F3>', '<cmd>set rnu! | set nu!<cr>', {silent = true})
vim.keymap.set('n', '<leader>r', '<cmd>set registers<cr>', { expr = true } )
vim.keymap.set('n', '<leader>i', '<cmd>set ignorecase!<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>set hlsearch!<cr>')

-- guide
vim.keymap.set('i', ',++', '<++>')
vim.keymap.set('i', ',<tab>', '<esc>/<++><enter>"_c4l')
vim.keymap.set('v', '<leader><tab>', '<esc>/<++><enter>"_c4l')
