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

keymap.set('n', '<leader>po', function()
  vim.cmd [[PikeList]]
end)

keymap.set('n', '<leader>pn', function()
  vim.cmd [[PikeNext]]
end)

keymap.set('n', '<leader>pp', function()
  vim.cmd [[PikePrev]]
end)

keymap.set('n', '<leader>png', function()
  vim.cmd [[PikeNextGlobal]]
end)

keymap.set('n', '<leader>ppg', function()
  vim.cmd [[PikePrevGlobal]]
end)

-- require('trident').generte_keybinds {
--   create_label_prefix = 'm',
--   delete_label_prefix = 'dm',
--   jump_label_prefix = ';',
--   create_typed_prefix = 'tt',
--   clear_type_key = 'tr',
-- }
