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

vim.o.statusline = '%{mode()} %f %{v:lua.MyStatusline()} %m %= %l:%c'
