return {
	{
		'nvim-pack/nvim-spectre',
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		},
		config = function()
			local spectre = require("spectre")

			spectre.setup()

			vim.keymap.set('n', '<leader>srg', function()
				spectre.toggle()
			end,
			{ desc = '[S]earch and [R]eplace [G]lobally' })

			vim.keymap.set('n', '<leader>srw', function()
				spectre.open_visual({select_word=true})
			end,
			{ desc = '[S]earch and [R]eplace [W]ord' })
		end
	}
}
