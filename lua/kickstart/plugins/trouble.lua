return {
  'folke/trouble.nvim',
  -- dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional, for icons
  config = function()
    require('trouble').setup {
      auto_preview = false,
      indent_guides = false,
      modes = {
        diagnostics = {
          -- groups = {},
          groups = {
            { 'filename', format = '{basename}' },
          },
          filter = {},
        },
      },
      icons = {
        indent = { top = '', middle = '', last = '', fold_open = '', fold_closed = '', ws = '' },
        folder_closed = '',
        folder_open = '',
        kinds = {
          Array = '',
          Boolean = '',
          Class = '',
          Constant = '',
          Constructor = '',
          Enum = '',
          EnumMember = '',
          Event = '',
          Field = '',
          File = '',
          Function = '',
          Interface = '',
          Key = '',
          Method = '',
          Module = '',
          Namespace = '',
          Null = '',
          Number = '',
          Object = '',
          Operator = '',
          Package = '',
          Property = '',
          String = '',
          Struct = '',
          TypeParameter = '',
          Variable = '',
        },
      },
      -- your config here (optional)
      -- e.g. auto_open = false,
    }
  end,
}
