return {
  'ibhagwan/fzf-lua',
  cmd = { 'FzfLua' },
  config = function()
    require('fzf-lua').setup {
      fzf_colors = {
        true, -- auto generate rest of fzf’s highlights?
        bg = '-1',
        gutter = '-1', -- I like this one too, try with and without
      },
      winopts = {
        -- backdrop = 100,
        -- winblend = 20,
        preview = { hidden = true },
        split = 'belowright new',
        height = 0.4,
      },
      preview = { default = 'no' },
    }
  end,
}
