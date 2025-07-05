-- theme toggler - 1, 2
local theme_number = 1
local primary_theme = 'base16-kanagawa-dragon'
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

-- failsafe, so if theme is not loaded, it will fallback to a known theme (default)
if are_themes_loaded then
  vim.cmd.colorscheme(primary_theme)
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
