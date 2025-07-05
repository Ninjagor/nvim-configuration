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

vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'harpoon',
  callback = function()
    vim.opt.winblend = 20
    -- vim.opt.cursorline = true
    vim.api.nvim_set_hl(0, 'HarpoonWindow', { link = 'Normal' })
    vim.api.nvim_set_hl(0, 'HarpoonBorder', { link = 'Normal' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE', fg = '#7aa2f7' })
  end,
})

require 'pluginconfigs.statusline'

vim.cmd 'TransparentEnable'

vim.api.nvim_set_hl(0, 'StatusLine', {
  bg = '#242424',
  fg = '#7e7d87',
})

vim.api.nvim_set_hl(0, 'Visual', { bg = '#c4b28a', fg = '#000000' })
