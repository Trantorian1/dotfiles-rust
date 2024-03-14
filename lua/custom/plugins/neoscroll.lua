return {
  {
    'karb94/neoscroll.nvim',
    config = function()
      local neoscroll = require 'neoscroll'
      neoscroll.setup {}

      local scroll_up = function()
        neoscroll.scroll(-1, true, 200, 'quadratic')
      end

      local scroll_down = function()
        neoscroll.scroll(1, true, 200, 'quadratic')
      end

      vim.keymap.set('n', '<S-w>', scroll_up, { desc = 'Scroll up' })
      vim.keymap.set('n', '<S-s>', scroll_down, { desc = 'Scroll down' })
    end,
  },
}
