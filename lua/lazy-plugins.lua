require('lazy').setup({
  'NMAC427/guess-indent.nvim',

  'NLKNguyen/papercolor-theme',

  {
    'RRethy/base16-nvim',
    lazy = false,
    priority = 1000,
    config = function() end,
  },

  -- {
  --   'goolord/alpha-nvim',
  --   config = function()
  --     local alpha = require 'alpha'
  --     local dashboard = require 'alpha.themes.dashboard'
  --
  --     alpha.setup(dashboard.config)
  --   end,
  -- },

  {
    'nvim-orgmode/orgmode',
    event = 'VeryLazy',
    ft = { 'org' },
    config = function()
      -- Setup orgmode
      require('orgmode').setup {
        org_agenda_files = '~/orgfiles/**/*',
        org_default_notes_file = '~/orgfiles/refile.org',
      }

      -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
      -- add ~org~ to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },

  {
    'brianhuster/live-preview.nvim',
    dependencies = {
      'ibhagwan/fzf-lua',
    },
  },

  { 'mbbill/undotree', lazy = false, priority = 1000 },

  {
    name = 'black-metal',
    dir = vim.fn.expand '~/.config/nvim/local-plugins/black-metal',
    lazy = false,
    priority = 1000,
    config = function()
      require('black-metal').setup {
        theme = 'impaled-nazarene',
        -- theme = 'bathory',
        variant = 'dark',
      }
      require('black-metal').load()
    end,
  },

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

  -- require 'kickstart.plugins.blink-cmp',

  require 'kickstart.plugins.cmp',

  -- require 'kickstart.plugins.cmp',

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
