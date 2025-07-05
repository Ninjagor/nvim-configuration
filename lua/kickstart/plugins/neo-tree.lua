-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- 'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    {
      'nvim-tree/nvim-web-devicons',
      config = function()
        require('nvim-web-devicons').setup {}
      end,
    },
  },
  lazy = false,
  keys = {
    { '<C-n>', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        width = 28,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
