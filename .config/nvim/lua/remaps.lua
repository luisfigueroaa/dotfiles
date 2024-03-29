vim.g.mapleader = " "

-- enviroment
vim.keymap.set({'n', 'i', 'v'}, '<F6>', '<esc>:setlocal spell! spelllang=es,en,fr')
vim.keymap.set({'n', 'i', 'v'}, '<F3>', ':set rnu! | set nu!<cr>', { silent = false })
vim.keymap.set('n', '<leader>R', '<cmd>registers<cr>')
vim.keymap.set('n', '<leader>i', ':set ignorecase!<cr>')
vim.keymap.set('n', '<leader>h', ':set hlsearch!<cr>')
vim.keymap.set('n', '<leader>cd', ':cd %:h<cr>')
vim.keymap.set('n', '<leader>tn', '<cmd>tabnew<cr>')

-- guide
vim.keymap.set('i', ',++', '<++>')
vim.keymap.set('i', ',<tab>', '<esc>/<++><enter>"_c4l')
vim.keymap.set({'n', 'v'}, '<leader><tab>', '<esc>/<++><enter>"_c4l')

--compiler and output
vim.keymap.set('n', '<leader>co', ':w | !compiler "<c-r>%"<cr>')
vim.keymap.set('n', '<leader>op', ':!opout <c-r>%<cr><cr>')

vim.keymap.set('n', '<leader>ls', '<cmd>set list!<cr>')
