local config_path = debug.getinfo(1, 'S').source:match '@(.*[/\\])' or ''

return {
  {
    'NStefan002/speedtyper.nvim',
    cmd = 'Speedtyper',
    opts = {
      custom_text_file = config_path .. '../../../english-1k.txt',
      randomize = true,
      game_modes = {
        countdown = {
          time = 30,
        },
      },
    },
    keys = {
      {
        '<leader>st',
        '<CMD>Speedtyper<CR>',
        { desc = '[S]peed [T]yper' },
      },
    },
  },
}
