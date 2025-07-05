return {
  'Exafunction/windsurf.vim',
  config = function()
    vim.g.codeium_no_map_tab = true
    vim.g.codeium_enabled = false
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<c-;>', function()
      return vim.fn['codeium#CycleCompletions'](1)
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<c-,>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, { expr = true, silent = true })
    vim.keymap.set('i', '<c-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true })

    vim.keymap.set('n', '<leader>wt', ':CodeiumToggle<CR>', { desc = 'Toggle Codeium', silent = false })

    vim.keymap.set('n', '<leader>we', ':CodeiumEnable<CR>', { desc = 'Toggle Codeium', silent = false })

    vim.keymap.set('n', '<leader>wd', ':CodeiumDisable<CR>', { desc = 'Toggle Codeium', silent = false })
  end,
}
