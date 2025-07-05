return {
  'asilvam133/rose-pine.nvim',
  name = 'rose-pine',
  lazy = false,
  opts = {
    styles = {
      bold = false,
      italic = false,
      transparency = true,
    },
    highlight_groups = {
      ['@function.builtin.lua'] = { italic = false },
      ['@lsp.type.comment'] = { italic = true },
      ['@lsp.typemod.function.defaultLibrary.lua'] = { italic = false },
      Comment = { italic = true },
      DiagnosticUnnecessary = { italic = false },
      TabLine = { bg = 'none' },
      TabLineSel = { bg = 'none' },
      TabLineFill = { bg = 'none' },
      ZenBg = { bg = 'none' },
    },
  },
  config = function(_, opts)
    require('rose-pine').setup(opts)
  end,
}
