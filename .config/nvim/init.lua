require('sets')
require('plugins')
require('colorscheme')
require('remaps')
require('lualine').setup {
    options = {
	theme = 'onedark',
	component_separators = { left = '|', right = '|'},
	section_separators = { left = '', right = ''},
    }
}

require('plugins.nerdtree')

require('snippets')
