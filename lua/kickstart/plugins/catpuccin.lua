return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = true,
      }
      vim.cmd.colorscheme 'catppuccin'

      vim.cmd [[
        highlight CursorLine guibg=NONE ctermbg=NONE
      ]]
    end,
  },
}
