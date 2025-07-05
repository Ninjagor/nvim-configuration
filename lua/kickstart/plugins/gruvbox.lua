return {
  'sainnhe/gruvbox-material',
  priority = 1000,
  -- config = true,
  opts = ...,
  config = function()
    vim.g.gruvbox_material_transparent_background = 2
    --   require('gruvbox').setup {
    --     transparent_mode = true,
    --   }
  end,
}
