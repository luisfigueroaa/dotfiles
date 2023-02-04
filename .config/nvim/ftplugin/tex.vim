" replace vim.lsp.buf.hover() per vimtex-doc-package
" https://github.com/VonHeikemen/lsp-zero.nvim/blob/bc237bc1651efd4775df550b161e1a3b8cc012fb/advance-usage.md#setup-lsp-keybindings-in-vimscript
function! LspAttached() abort
    map <buffer> K <Plug>(vimtex-doc-package)
endfunction

lua << EOF
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
    vim.call('LspAttached')
end)

lsp.setup()
EOF
