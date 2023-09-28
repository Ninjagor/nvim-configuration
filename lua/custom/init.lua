-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
vim.api.nvim_set_keymap('n', '<leader>tq', [[:set showtabline=0<CR>:echo "Tablufline Hidden"<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>te', [[:set showtabline=2<CR>:echo "Tablufline Shown"<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>tt', [[:lua require('base46').toggle_theme()<CR>:echo "Theme Toggled"<CR>]], { noremap = true, silent = true })


vim.g.netrw_banner = 0

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    client.server_capabilities.semanticTokensProvider = nil
  end,
})
