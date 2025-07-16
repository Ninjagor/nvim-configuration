-- theme toggler - 1, 2
local theme_number = 1
local primary_theme = 'black-metal'
local secondary_theme = 'rose-pine'
-- local secondary_theme = 'vague'

local are_themes_loaded = true

local function is_theme_available(theme)
  local success, _ = pcall(ApplyCustomColors, theme)
  return success
end

if not is_theme_available(primary_theme) then
  are_themes_loaded = false
end

if not is_theme_available(secondary_theme) then
  are_themes_loaded = false
end

-- highlight override function
local function apply_theme_overrides() end

vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopePromptOpen',
  callback = apply_theme_overrides,
})

if are_themes_loaded then
  ApplyCustomColors(primary_theme)
  apply_theme_overrides()
end

_G.ApplyCustomColors = function(cl)
  print(cl)
  if cl == 'black-metal' then
    require('black-metal').load()
  else
    vim.cmd.colorscheme(cl)
  end
end

_G.theme_switch = function()
  if are_themes_loaded then
    if theme_number == 1 then
      theme_number = 2
      ApplyCustomColors(secondary_theme)
      -- vim.cmd.colorscheme(secondary_theme)
    else
      theme_number = 1
      ApplyCustomColors(primary_theme)
      -- vim.cmd.colorscheme(primary_theme)
    end
  end

  vim.cmd [[ set background=dark ]]
end

vim.api.nvim_set_keymap('n', '<leader>ct', ':lua theme_switch()<CR>', { noremap = true, silent = true })
