return {
  'kevinhwang91/nvim-bqf',
  ft = 'qf', -- load only when quickfix window opens
  config = function()
    require('bqf').setup()
  end,
}
