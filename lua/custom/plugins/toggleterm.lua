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
    end,
  },
}
