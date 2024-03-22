return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        size = vim.o.columns * 0.9,
        direction = 'float',
        close_on_exit = true,
        -- floating terminal
        float_opts = {
          border = 'curved',
          title_pos = 'center',
        },
      }

      vim.keymap.set('n', '<leader>to', '<CMD>ToggleTerm name=zsh<CR>', { desc = '[T]erminal [O]pen' })

      vim.keymap.set('n', '<leader>tv', '<CMD>ToggleTerm name=zsh direction=vertical<CR>',
        { desc = '[T]erminal open [V]ertical' })

      vim.keymap.set('n', '<leader>th', '<CMD>ToggleTerm name=zsh direction=horizontal<CR>',
        { desc = '[T]erminal open [H]orizontal' })
    end,
  },
}
