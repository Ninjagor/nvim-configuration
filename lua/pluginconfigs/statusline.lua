function _G.MyStatusline()
  local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local warns = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

  local diag = ''
  if errors > 0 then
    diag = diag .. '❌' .. errors .. ' '
  end
  if warns > 0 then
    diag = diag .. '⚠️' .. warns .. ' '
  end
  if info > 0 then
    diag = diag .. ' ' .. info .. ' '
  end
  if hints > 0 then
    diag = diag .. ' ' .. hints .. ' '
  end

  return diag
end

function _G.MyBufferInfo()
  local bufnr = vim.api.nvim_get_current_buf()
  local buffers = vim.fn.getbufinfo { buflisted = 1 }

  -- Find current buffer's index in the listed buffers
  local current_index = 0
  for i, buf in ipairs(buffers) do
    if buf.bufnr == bufnr then
      current_index = i
      break
    end
  end

  local total = #buffers
  return string.format('[buf %d:%d]', current_index, total)
end

-- vim.api.nvim_set_hl(0, 'StatusLine', {
--   bg = '#242424', -- very dark gray (almost black)
--   fg = '#7e7d87', -- light gray text for contrast
-- })

vim.api.nvim_set_hl(0, 'StatusLine', {
  -- bg = '#5c666b',
  bg = '#000000',
  fg = '#062027',
})

-- vim.o.statusline = '%{mode()} %f %{v:lua.MyStatusline()} %m %= %l:%c'
-- vim.o.statusline = '%f %{v:lua.MyStatusline()} %m %= %l:%c'
-- vim.o.statusline = '%f %{v:lua.MyStatusline()} %m %{v:lua.MyBufferInfo()} %= %l:%c'

vim.o.statusline = '%{fnamemodify(expand("%"), ":~:.")} %{v:lua.MyStatusline()} %m %{v:lua.MyBufferInfo()} %= %l:%c'
