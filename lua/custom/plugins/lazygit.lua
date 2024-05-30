return {
  'kdheepak/lazygit.nvim',
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>gu', '<CMD>LazyGit<CR>', { desc = '[G]it [U]i' })
  end,
}
