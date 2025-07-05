local harpoon = require 'harpoon'
harpoon:setup {}

-- keymaps
local keymap = vim.keymap
keymap.set('n', '<leader>hm', function()
  harpoon:list():add()
end, { desc = 'Harpoon mark file' })
keymap.set('n', '<leader>ho', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = 'Harpoon menu' })
keymap.set('n', '<leader>nh', function()
  harpoon:list():next()
end, { desc = 'Next Harpoon file' })
keymap.set('n', '<leader>ph', function()
  harpoon:list():prev()
end, { desc = 'Previous Harpoon file' })

-- basic telescope configuration
local conf = require('telescope.config').values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require('telescope.pickers')
    .new({}, {
      prompt_title = 'Harpoon',
      finder = require('telescope.finders').new_table {
        results = file_paths,
      },
      previewer = conf.file_previewer {},
      sorter = conf.generic_sorter {},
    })
    :find()
end

vim.keymap.set('n', '<leader>fh', function()
  toggle_telescope(harpoon:list())
end, { desc = 'Open harpoon window' })
