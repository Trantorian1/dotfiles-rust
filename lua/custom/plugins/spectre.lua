return {
  {
    'nvim-pack/nvim-spectre',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      {
        '<leader>srg',
        function()
          require('spectre').open_visual { select_word = true }
        end,
        { desc = '[S]earch and [R]eplace [G]lobally' },
      },
    },
  },
}
