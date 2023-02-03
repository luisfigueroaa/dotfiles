vim.g.mapleader = " "

-- enviroment
vim.keymap.set({'n', 'i', 'v'}, '<F6>', '<esc>:setlocal spell! spelllang=es,en,fr')
vim.keymap.set({'n', 'i', 'v'}, '<F3>', '<cmd>set rnu! | set nu!<cr>', {silent = true})
vim.keymap.set('n', '<leader>R', '<cmd>registers<cr>')
vim.keymap.set('n', '<leader>i', '<cmd>set ignorecase!<cr>')
vim.keymap.set('n', '<leader>h', '<cmd>set hlsearch!<cr>')
vim.keymap.set('n', '<leader>cd', '<cmd>cd %:h<cr>')
vim.keymap.set('n', '<leader>tn', '<cmd>tabnew<cr>')

-- guide
vim.keymap.set('i', ',++', '<++>')
vim.keymap.set('i', ',<tab>', '<esc>/<++><enter>"_c4l')
vim.keymap.set({'n', 'v'}, '<leader><tab>', '<esc>/<++><enter>"_c4l')

--compiler and output
vim.keymap.set('n', '<leader>co', ':w | !compiler "<c-r>%"<cr>')
vim.keymap.set('n', '<leader>op', ':!opout <c-r>%<cr><cr>')
