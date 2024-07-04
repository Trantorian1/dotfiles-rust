return {
  'kdheepak/lazygit.nvim',
  -- optional for floating window border decoration
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    {
      '<leader>gu',
      '<CMD>LazyGit<CR>',
      { desc = '[G]it [U]i' }
    }
  }
}
