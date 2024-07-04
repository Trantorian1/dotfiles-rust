return {
  'nvim-treesitter/nvim-treesitter-context',
  main = 'treesitter-context',
  opts = {
    enable = true
  },
  lazy = true,
  event = "BufEnter",
  keys = {
    {
      '<leader>tc',
      '<CMD>TSContextToggle<CR>',
      { desc = '[T]oggle function [C]ontext' }
    }
  }
}
