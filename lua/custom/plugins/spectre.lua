return {
	{
		'nvim-pack/nvim-spectre',
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		},
		config = function()
			local spectre = require('spectre')
			spectre.setup()

			vim.keymap.set('n', '<leader>sr', spectre.toggle(), {
				desc = "[S]earch and [R]eplace"
			})
			vim.keymap.set('v', '<leader>sw', spectre.open_visual(), {
				desc = "[S]earch [W]ord"
			})
		end
	}
}
