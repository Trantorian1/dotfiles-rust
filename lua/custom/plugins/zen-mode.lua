return {
  {
    'folke/zen-mode.nvim',
    config = function()
      local zen_mode = require 'zen-mode'
      zen_mode.setup()

      vim.keymap.set('n', '<leader>zm', zen_mode.toggle, { desc = '[Z]en [M]ode' })
    end,
  },
}
