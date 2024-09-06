return {
  {
    'folke/trouble.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'folke/todo-comments.nvim',
    },
    keys = {
      {
        '<leader>li',
        function()
          require('trouble').toggle 'diagnostics'
        end,
        { desc = '[L]ist [I]ssues' },
      },
      {
        '<leader>lt',
        function()
          require('trouble').toggle 'todo'
        end,
        { desc = '[L]ist [T]odo' },
      },
    },
  },
}
