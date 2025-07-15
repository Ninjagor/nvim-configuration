vim.cmd 'highlight clear'
vim.cmd 'syntax reset'
vim.o.background = 'dark'
vim.g.colors_name = 'rose-nebula'

local palette = {
  base = '#191724',
  surface = '#26233a',
  overlay = '#403d52',
  text = '#e0def4',
  rose = '#eb6f92',
  gold = '#f6c177',
  pine = '#9ccfd8',
  foam = '#7f9fa0',
  iris = '#c4a7e7',
  love = '#eb6f92',
  highlight = '#ebbcba',
  muted = '#6e6a86',
}

local set = vim.api.nvim_set_hl

-- UI
set(0, 'Normal', { fg = palette.text, bg = palette.base })
set(0, 'Cursor', { fg = palette.base, bg = palette.text })
set(0, 'Visual', { bg = palette.overlay })
set(0, 'CursorLine', { bg = palette.surface })
set(0, 'LineNr', { fg = palette.muted })
set(0, 'CursorLineNr', { fg = palette.gold })
set(0, 'StatusLine', { fg = palette.text, bg = palette.surface })
set(0, 'Pmenu', { fg = palette.text, bg = palette.surface })
set(0, 'PmenuSel', { bg = palette.overlay })

-- Syntax
set(0, 'Comment', { fg = palette.muted, italic = true })
set(0, 'Constant', { fg = palette.rose })
set(0, 'String', { fg = palette.gold })
set(0, 'Identifier', { fg = palette.foam })
set(0, 'Function', { fg = palette.pine })
set(0, 'Statement', { fg = palette.iris })
set(0, 'Keyword', { fg = palette.iris })
set(0, 'Type', { fg = palette.gold })
set(0, 'Special', { fg = palette.highlight })
set(0, 'Error', { fg = palette.love, bold = true })
set(0, 'Todo', { fg = palette.gold, bg = palette.surface, bold = true })

-- Diffs
set(0, 'DiffAdd', { bg = '#2a3c2f' })
set(0, 'DiffDelete', { bg = '#4a2c31' })
set(0, 'DiffChange', { bg = '#2e3440' })
set(0, 'DiffText', { bg = '#465780' })
