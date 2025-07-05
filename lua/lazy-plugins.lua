require('lazy').setup({
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically

  -- require 'kickstart.plugins.gitsigns',

  -- require 'kickstart.plugins.which-key',

  {
    'RRethy/base16-nvim',
    lazy = false,
    priority = 1000,
    config = function() end,
  },

  require 'kickstart.plugins.telescope',

  require 'custom.plugins.zenbones',

  require 'kickstart.plugins.lspconfig',

  require 'kickstart.plugins.conform',

  require 'kickstart.plugins.blink-cmp',

  -- require 'kickstart.plugins.tokyonight',

  -- require 'kickstart.plugins.github-theme',

  -- require 'kickstart.plugins.gruvbox',

  require 'kickstart.plugins.gruvbox',

  -- require 'kickstart.plugins.catpuccin',

  -- require 'kickstart.plugins.rosepine-theme',

  require 'kickstart.plugins.new-rosepine',

  require 'custom.plugins.vague',

  require 'kickstart.plugins.todo-comments',

  require 'kickstart.plugins.mini',

  require 'kickstart.plugins.treesitter',

  -- require 'kickstart.plugins.neo-tree',

  require 'kickstart.plugins.autotag',

  require 'kickstart.plugins.harpoon',

  -- require 'kickstart.plugins.zen',

  -- require 'custom.plugins.lualine',

  require 'kickstart.plugins.devicons',

  require 'kickstart.plugins.marks',

  require 'custom.plugins.ai.windsurf',

  require 'custom.plugins.transparent',

  -- require 'custom.plugins.telescope-file-browser',

  -- require 'custom.plugins.oil',

  require 'custom.plugins.monochrome',

  -- require 'custom.plugins.smear',

  -- require 'kickstart.plugins.trouble',

  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  require 'kickstart.plugins.autopairs',
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
