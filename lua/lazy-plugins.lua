require('lazy').setup({
  -- 'NMAC427/guess-indent.nvim',

  'NLKNguyen/papercolor-theme',

  {
    'RRethy/base16-nvim',
    lazy = false,
    priority = 1000,
    config = function() end,
  },

  { 'mbbill/undotree', lazy = false, priority = 1000 },

  {
    name = 'gruber-darker',
    dir = vim.fn.expand '~/.config/nvim/local-plugins/gruber-darker',
    opts = {
      italic = {
        strings = false,
        comments = true,
        operators = false,
        folds = false,
      },
    },
  },

  require 'dev.plugins.trident',

  require 'custom.plugins.fzf',

  require 'kickstart.plugins.lspconfig',

  require 'kickstart.plugins.conform',

  require 'kickstart.plugins.blink-cmp',

  require 'kickstart.plugins.new-rosepine',

  require 'kickstart.plugins.treesitter',

  require 'kickstart.plugins.autotag',

  require 'kickstart.plugins.marks',

  -- require 'custom.plugins.ai.windsurf',

  require 'custom.plugins.transparent',

  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
