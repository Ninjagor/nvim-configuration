-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

vim.keymap.set('v', 'j', 'gj')
vim.keymap.set('v', 'k', 'gk')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Neotree keymap
-- vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>')

-- Netrw keymap

vim.keymap.set('n', '<leader>on', ':Lex<CR>')
vim.keymap.set('n', '<leader>of', ':Ex<CR>')
vim.keymap.set('n', '<leader>os', ':Sex<CR>')
vim.keymap.set('n', '<leader>re', ':Rex<CR>')

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- window cycling
vim.keymap.set('n', '<leader>jl', ':wincmd l<CR>') -- Cycle right
vim.keymap.set('n', '<leader>jh', ':wincmd h<CR>') -- Cycle left
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>') -- Cycle down
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>') -- Cycle up

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>nr', ':Re<CR>', { silent = true })
vim.keymap.set('n', '<leader>no', ':Explore<CR>', { silent = true })

vim.keymap.set('n', '<leader>nf', ':find ', { silent = true })
-- vim: ts=2 sts=2 sw=2 et

-- LSP KEYMAPS
vim.keymap.set('n', 'K', function()
  vim.lsp.buf.hover { border = 'single', max_height = 25, max_width = 120 }
end)

vim.keymap.set('n', 'gr', function()
  vim.lsp.buf.references()
end)

vim.keymap.set('n', 'gd', function()
  vim.lsp.buf.definition()
end)

vim.keymap.set('n', 'gi', function()
  vim.lsp.buf.implementation()
end)

vim.keymap.set('n', '<C-a>', function()
  vim.lsp.buf.code_action()
end)

vim.keymap.set('n', 'rg', function()
  vim.lsp.buf.rename()
end)

-- BUFFERS
vim.keymap.set('n', '<leader>bn', function()
  vim.cmd [[ bnext ]]
end)

vim.keymap.set('n', '<leader>bp', function()
  vim.cmd [[ bprev ]]
end)

vim.keymap.set('n', '<leader>bd', function()
  vim.cmd [[ bd ]]
end)

-- UNDOTREE
vim.keymap.set('n', '<leader>ut', function()
  vim.cmd [[ UndotreeToggle ]]
end)

-- TROUBLE
vim.keymap.set('n', '<leader>xX', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Diagnostics (Trouble)' })

vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>', { desc = 'Buffer Diagnostics (Trouble)' })

vim.keymap.set('n', '<leader>cs', '<cmd>Trouble symbols toggle focus=false<cr>', { desc = 'Symbols (Trouble)' })

-- vim.keymap.set('n', '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<cr>', { desc = 'LSP Definitions / references / ... (Trouble)' })
--
-- vim.keymap.set('n', '<leader>xL', '<cmd>Trouble loclist toggle<cr>', { desc = 'Location List (Trouble)' })
--
-- vim.keymap.set('n', '<leader>xQ', '<cmd>Trouble qflist toggle<cr>', { desc = 'Quickfix List (Trouble)' })

-- QUICKFIX
vim.keymap.set('n', '<leader>qa', function()
  -- Get diagnostics from all buffers
  local diagnostics = vim.diagnostic.get(nil) -- nil = all buffers
  local qflist = {}

  for _, d in ipairs(diagnostics) do
    table.insert(qflist, {
      bufnr = d.bufnr,
      lnum = d.lnum + 1,
      col = d.col + 1,
      text = d.message,
      type = (
        d.severity == vim.diagnostic.severity.ERROR and 'E'
        or d.severity == vim.diagnostic.severity.WARN and 'W'
        or d.severity == vim.diagnostic.severity.INFO and 'I'
        or 'N'
      ),
      severity = d.severity,
    })
  end

  -- Sort by severity ascending (Error first)
  table.sort(qflist, function(a, b)
    return a.severity < b.severity
  end)

  -- Remove severity key, not needed by quickfix
  for _, item in ipairs(qflist) do
    item.severity = nil
  end

  vim.fn.setqflist(qflist, 'r')
  vim.cmd 'copen'
end, { desc = 'Open Quickfix: All Buffers Diagnostics (sorted by severity)' })

vim.keymap.set('n', '<leader>qb', function()
  local bufnr = vim.api.nvim_get_current_buf()
  local diagnostics = vim.diagnostic.get(bufnr)

  local qflist = {}
  for _, d in ipairs(diagnostics) do
    table.insert(qflist, {
      bufnr = bufnr,
      lnum = d.lnum + 1,
      col = d.col + 1,
      text = d.message,
      type = (
        d.severity == vim.diagnostic.severity.ERROR and 'E'
        or d.severity == vim.diagnostic.severity.WARN and 'W'
        or d.severity == vim.diagnostic.severity.INFO and 'I'
        or 'N'
      ),
      severity = d.severity,
    })
  end

  -- Sort by severity ascending (Error first)
  table.sort(qflist, function(a, b)
    return a.severity < b.severity
  end)

  -- Remove severity key, not needed by quickfix
  for _, item in ipairs(qflist) do
    item.severity = nil
  end

  vim.fn.setqflist(qflist, 'r')
  vim.cmd 'copen'
end, { desc = 'Show Current Buffer Diagnostics in Quickfix (sorted by severity)' })

vim.keymap.set({ 'n', 'x' }, '<leader>oo', '<cmd>lua require("fastaction").code_action()<CR>', { desc = 'Display code actions', buffer = bufnr })

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'qf',
  callback = function()
    vim.api.nvim_buf_set_keymap(0, 'n', '<CR>', '<CR>:cclose<CR>', { noremap = true, silent = true })
  end,
})

-- FZF-LUA
vim.keymap.set({ 'n' }, '<leader>sf', function()
  vim.cmd [[ FzfLua files ]]
end)

vim.keymap.set({ 'n' }, '<leader>sf', function()
  vim.cmd [[ FzfLua files ]]
end)

vim.keymap.set({ 'n' }, '<leader>sg', function()
  vim.cmd [[ FzfLua live_grep ]]
end)

vim.keymap.set({ 'n' }, '<leader>sb', function()
  vim.cmd [[ FzfLua buffers ]]
end)
