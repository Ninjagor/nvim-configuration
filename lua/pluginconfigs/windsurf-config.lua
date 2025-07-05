vim.g.codeium_enabled = false

-- Toggle function
vim.keymap.set('n', '<leader>tw', function()
  vim.g.codeium_enabled = not vim.g.codeium_enabled
  if vim.g.codeium_enabled then
    vim.notify('Codeium enabled', vim.log.levels.INFO)
  else
    vim.notify('Codeium disabled', vim.log.levels.WARN)
  end
end, { desc = 'Toggle Codeium' })
