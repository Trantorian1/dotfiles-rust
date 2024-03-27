return {
	{
		"folke/trouble.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			'folke/todo-comments.nvim'
		},
		config = function()
			local trouble = require('trouble')
			trouble.setup()

			vim.keymap.set('n', '<leader>li', trouble.toggle, { desc = '[L]ist [I]ssues' })

			vim.keymap.set('n', '<leader>lt', function()
				trouble.toggle('todo')
			end, { desc = '[L]ist [T]odo' })
		end
	}
}
