-- theme toggler - 1, 2
local theme_number = 1
local primary_theme = 'gruber-darker'
local secondary_theme = 'rose-pine'
-- local secondary_theme = 'vague'

local are_themes_loaded = true

local function is_theme_available(theme)
  local success, _ = pcall(vim.cmd.colorscheme, theme)
  return success
end

if not is_theme_available(primary_theme) then
  are_themes_loaded = false
end

if not is_theme_available(secondary_theme) then
  are_themes_loaded = false
end

-- highlight override function
local function apply_theme_overrides()
  -- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#121112' })
  -- vim.api.nvim_set_hl(0, 'FloatBorder', { fg = '#ffffff', bg = '#121112' })
  --
  -- vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = '#121112' })
  -- vim.api.nvim_set_hl(0, 'TelescopeBorder', { fg = '#ffffff', bg = '#121112' })
  -- vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = '#121112' })
  -- -- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = '#ffffff', bg = '#121112' })
  --
  -- vim.api.nvim_set_hl(0, 'TelescopeResultsTitle', { bg = '#ffffff' })
  -- vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = '#121112' })
  -- vim.api.nvim_set_hl(0, 'TelescopeResultsBorder', { fg = '#ffffff', bg = '#121112' })
  -- vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = '#121112' })
  -- vim.api.nvim_set_hl(0, 'TelescopePreviewBorder', { fg = '#ffffff', bg = '#121112' })
  --
  -- vim.api.nvim_set_hl(0, 'TelescopePromptBorder', { fg = '#121112', bg = '#121112' })
end

vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopePromptOpen',
  callback = apply_theme_overrides,
})

-- failsafe, so if theme is not loaded, it will fallback to a known theme (default)
if are_themes_loaded then
  vim.cmd.colorscheme(primary_theme)
  apply_theme_overrides()
end

_G.ApplyCustomColors = function(cl)
  vim.cmd.colorscheme(cl)
  if cl == '' then
  end
end

_G.theme_switch = function()
  if are_themes_loaded then
    if theme_number == 1 then
      theme_number = 2
      vim.cmd.colorscheme(secondary_theme)
    else
      theme_number = 1
      vim.cmd.colorscheme(primary_theme)
    end
  end

  vim.cmd [[ set background=dark ]]
end

vim.api.nvim_set_keymap('n', '<leader>ct', ':lua theme_switch()<CR>', { noremap = true, silent = true })
