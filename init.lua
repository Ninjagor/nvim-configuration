vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require 'options'

require 'keymaps'

require 'lazy-bootstrap'

require 'lazy-plugins'

require 'theme'

require 'pluginconfigs.harpoon-config'

vim.cmd [[ set relativenumber ]]

vim.cmd [[autocmd ColorScheme * lua vim.api.nvim_set_hl(0, "Normal", { bg = "none" })]]

require 'pluginconfigs.statusline'
