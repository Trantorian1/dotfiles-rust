return {
  'MagicDuck/grug-far.nvim',
  config = function()
    require('grug-far').setup {
      -- debounce milliseconds for issuing search while user is typing
      -- prevents excessive searching
      debounceMs = 10,

      -- max number of parallel replacements tasks
      maxWorkers = 8,

      engines = {
        ripgrep = {
          placeholders = {
            enabled = false,
          },
        },
      },
    }
  end,
  keys = {
    {
      '<leader>srg',
      '<CMD>GrugFar<CR>',
      { desc = '[S]earch and [R]eplace [G]lobally' },
    },
  },
}
