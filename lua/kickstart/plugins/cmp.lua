return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
    },
    opts = function()
      local cmp = require 'cmp'
      return {
        completion = {
          autocomplete = false,
          -- autocomplete = false, -- manual trigger only
        },
        completion = { autocomplete = false },
        window = {
          completion = {
            winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenu,CursorLine:PmenuSel',
            scrollbar = false,
          },
          documentation = { border = 'none' },
        },
        mapping = {
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<CR>'] = cmp.mapping.confirm { select = true },
          ['<C-e>'] = cmp.mapping.abort(),
        },
        sources = cmp.config.sources {
          { name = 'nvim_lsp', max_item_count = 10 },
          { name = 'path' },
          -- { name = 'buffer' },
        },
        experimental = {
          ghost_text = false,
        },
      }
    end,
  },
}
