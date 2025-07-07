local keymap = vim.keymap

keymap.set('n', '<leader>hm', function()
  vim.cmd [[TridentAdd]]
end, { desc = 'Trident mark file', silent = true })

keymap.set('n', '<leader>ho', function()
  vim.cmd [[TridentList]]
end, { desc = 'Trident menu', silent = true })

keymap.set('n', '<leader>nh', function()
  vim.cmd [[TridentNext]]
end, { desc = 'Next Trident file', silent = true })

keymap.set('n', '<leader>ph', function()
  vim.cmd [[TridentPrev]]
end, { desc = 'Previous Trident file', silent = true })
