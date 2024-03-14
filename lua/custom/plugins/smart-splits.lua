return {
  {
    'mrjones2014/smart-splits.nvim',
    config = function()
      local smart_splits = require 'smart-splits'

      smart_splits.setup {
        resize_mode = {
          silent = false,
        },
      }

      -- movement motions
      vim.keymap.set('n', '<M-Left>', smart_splits.move_cursor_left, { desc = 'Move cursor left' })
      vim.keymap.set('n', '<M-Right>', smart_splits.move_cursor_right, { desc = 'Move cursor right' })
      vim.keymap.set('n', '<M-Up>', smart_splits.move_cursor_up, { desc = 'Move cursor up' })
      vim.keymap.set('n', '<M-Down>', smart_splits.move_cursor_down, { desc = 'Move cursor down' })

      -- resize motions
      vim.keymap.set('n', '<M-S-Left>', smart_splits.resize_left, { desc = 'Resize left' })
      vim.keymap.set('n', '<M-S-Right>', smart_splits.resize_right, { desc = 'Resize right' })
      vim.keymap.set('n', '<M-S-Up>', smart_splits.resize_up, { desc = 'Resize up' })
      vim.keymap.set('n', '<M-S-Down>', smart_splits.resize_down, { desc = 'Resize down' })
    end,
  },
}
