return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
  opts = {
    buffers = {
      left = {
        scratchPad = {
          enabled = true,
          pathToFile = './notes-left.md',
        },
      },
      right = {
        scratchPad = {
          enabled = true,
          pathToFile = './notes-right.md',
        },
      },
    },
  },
  keys = {
    {
      '<leader>cc',
      function()
        require('no-neck-pain').toggle()
      end,
      { desc = '[C]enter buffer' },
    },
  },
}
