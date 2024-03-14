return {
  {
    'sindrets/diffview.nvim',
    config = function()
      vim.keymap.set('n', '<leader>gd', '<CMD>DiffviewOpen<CR>', { desc = '[G]it [D]iff' })
    end,
  },
}
