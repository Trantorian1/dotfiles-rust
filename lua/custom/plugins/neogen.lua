return {
	{
		"danymat/neogen",
		config = function()
			local neogen = require('neogen')
			neogen.setup {}

			vim.keymap.set('n', '<leader>dc', neogen.generate, { desc = '[D]ocument [C]ode' })
		end,
	}
}
