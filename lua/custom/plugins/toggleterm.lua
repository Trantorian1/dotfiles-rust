return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    shell = 'zsh',
    opts = {
      size = vim.o.columns * 0.9,
      direction = 'float',
      close_on_exit = true,
      -- floating terminal
      float_opts = {
        border = 'curved',
        title_pos = 'center',
      },
    },
    keys = {
      {
        '<leader>tt',
        '<CMD>ToggleTerm name=zsh direction=horizontal<CR>',
        { desc = '[T]erminal [T]oggle' },
      },
    },
  },
}
