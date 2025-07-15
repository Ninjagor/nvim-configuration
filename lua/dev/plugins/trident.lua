return {
  -- 'ninjagor/trident.nvim',
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   require('trident').setup {
  --     cycle = true,
  --     shorten_paths = true,
  --     silent = true,
  --   }
  -- end,
  dir = '~/rohit-project-work/trident.nvim/',
  dev = true,
  name = 'trident.nvim',
  config = function()
    require('trident').setup {
      disable_pikes = true,
      cycle = true,
      shorten_paths = true,
      silent = true,
      pikes_keybinds = {
        jump_prefix = 'tj',
      },
      win = {
        -- win_type = 'float',
        -- transparent = true,
        -- buf_split = 'topleft',
      },
    }
  end,
}
