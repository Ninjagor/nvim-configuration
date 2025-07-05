return {
  'folke/zen-mode.nvim',
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    vim.keymap.set('n', '<leader>zz', function()
      require('zen-mode').setup {
        window = {
          -- width = 90,
          options = {},
        },
      }
      require('zen-mode').toggle()
    end)
  end,
}
