return {
  {
    'karb94/neoscroll.nvim',
    config = function()
      local neoscroll = require 'neoscroll'
      neoscroll.setup {
        performance_mode = true,
      }

      local scroll_up = function()
        neoscroll.scroll(-1, true, 10)
      end

      local scroll_down = function()
        neoscroll.scroll(1, true, 10)
      end

      vim.keymap.set('n', '<S-w>', scroll_up, { desc = 'Scroll up' })
      vim.keymap.set('n', '<S-s>', scroll_down, { desc = 'Scroll down' })
    end,
  },
}
