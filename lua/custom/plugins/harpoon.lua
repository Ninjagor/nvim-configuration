-- return {
--   'ThePrimeagen/harpoon',
--   dependencies = {
--     'nvim-lua/plenary.nvim',
--   },
--   config = function()
--     -- set keymaps
--     local keymap = vim.keymap -- for conciseness
--
--     keymap.set('n', '<leader>hm', "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = 'Mark file with harpoon' })
--     keymap.set('n', '<leader>ho', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = 'Mark file with harpoon' })
--     keymap.set('n', '<leader>hn', "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = 'Go to next harpoon mark' })
--     keymap.set('n', '<leader>hg', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = 'Go to previous harpoon mark' })
--   end,
-- }
--
-- return {
--   'ThePrimeagen/harpoon',
--   branch = 'harpoon2',
--   dependencies = { 'nvim-lua/plenary.nvim' },
--   -- config = function()
--   --   -- set keymaps
--   --   local keymap = vim.keymap -- for conciseness
--   --
--   --   keymap.set('n', '<leader>hm', "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = 'Mark file with harpoon' })
--   --   keymap.set('n', '<leader>ho', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = 'Mark file with harpoon' })
--   --   keymap.set('n', '<leader>hn', "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = 'Go to next harpoon mark' })
--   --   keymap.set('n', '<leader>hg', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = 'Go to previous harpoon mark' })
--   -- end,
-- }
