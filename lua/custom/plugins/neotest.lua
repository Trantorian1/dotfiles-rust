return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		'mrcjkb/rustaceanvim',
	},
	config = function()
		require("neotest").setup{
			adapters = {
				require('rustaceanvim.neotest')
			},
			output = {
				enabled = false
			},
			summary = {
				mappings = {
					jumpto = 'gd'
				}
			}
		}
	end,
	keys = {
		{
			'<leader>trs',
			function()
				require('neotest').output_panel.open()
				require('neotest').run.run()
			end,
			mode = 'n',
			desc = '[T]est [R]un [S]ingle'
		},
		{
			'<leader>trf',
			function()
				require('neotest').output_panel.open()
				require('neotest').run.run(vim.fn.expand("%"))
			end,
			mode = 'n',
			desc = '[T]est [R]un [F]ile'
		},
		{
			'<leader>tq',
			function()
				require('neotest').output_panel.close()
				require('neotest').run.stop()
			end,
			mode = 'n',
			desc = '[T]est [Q]uit'
		},
		{
			'<leader>ts',
			function()
				require('neotest').summary.toggle()
			end,
			mode = 'n',
			desc = '[T]est [S]ummary'
		},
		{
			']t',
			function()
				require('neotest').jump.next()
			end,
			mode = 'n',
			desc = 'Next test'
		},
		{
			'[t',
			function()
				require('neotest').jump.prev()
			end,
			mode = 'n',
			desc = 'Previous test'
		},
		{
			'<leader>tt',
			function()
				local test = require('neotest').Client:get_results(
					require('rustaceanvim.neotest')
				)
				print(test)
			end,
			mode = 'n',
			desc = '[T]est [P]revious'
		},
	}
}
