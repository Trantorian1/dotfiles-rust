return {
  'Bekaboo/deadcolumn.nvim',
  config = function()
    require('deadcolumn').setup()
    vim.opt.colorcolumn = '79'
  end,
}
