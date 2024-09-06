return {
  'folke/edgy.nvim',
  event = 'VeryLazy',
  init = function()
    vim.opt.laststatus = 3
    vim.opt.splitkeep = 'screen'
  end,
  opts = {
    bottom = {
      {
        ft = 'toggleterm',
        -- exclude floating windows
        filter = function(_, win)
          return vim.api.nvim_win_get_config(win).relative == ''
        end,
      },
      {
        ft = 'trouble',
      },
    },

    right = {
      {
        ft = 'help',
        -- only show help buffers
        filter = function(buf)
          return vim.bo[buf].buftype == 'help'
        end,
      },

      {
        ft = 'grug-far',
      },
    },

    options = {
      bottom = { size = 0.3 },
      right = { size = 90 },
    },

    animate = {
      enabled = false,
    },

    -- enable this to exit Neovim when only edgy windows are left
    exit_when_last = true,
    -- close edgy when all windows are hidden instead of opening one of them
    -- disable to always keep at least one edgy split visible in each open section
    close_when_all_hidden = true,
  },
}
