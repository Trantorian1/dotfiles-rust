return {
	'stevearc/oil.nvim',
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require('oil').setup {
			-- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
			-- Set to false if you still want to use netrw.
			default_file_explorer = true,
			-- Id is automatically added at the beginning, and name at the end
			-- See :help oil-columns
			columns = {
				"icon",
				"permissions",
				"size",
				-- "mtime",
			},
			-- Keymaps in oil buffer. Can be any value that `vim.keymap.set` accepts OR a table of keymap
			-- options with a `callback` (e.g. { callback = function() ... end, desc = "", mode = "n" })
			-- Additionally, if it is a string that matches "actions.<name>",
			-- it will use the mapping at require("oil.actions").<name>
			-- Set to `false` to remove a keymap
			-- See :help oil-actions for a list of all available actions
			keymaps = {
				["<leader>f?"] = "actions.show_help",
				["<CR>"] = "actions.select",
				["<leader>fp"] = "actions.preview",
				[".."] = "actions.parent",
				["."] = "actions.open_cwd",
			},
			view_options = {
				-- Show files and directories that start with "."
				show_hidden = true,
			}
		}

		local oil = require('oil')

		vim.keymap.set('n', '<leader>fo', oil.open_float, { desc = '[F]ile tree [O]pen' })
		vim.keymap.set('n', '<leader>fc', oil.close, { desc = '[F]ile tree [C]lose' })
		vim.keymap.set('n', '<leader>fs', oil.save, { desc = '[F]ile tree [S]ave' })
		vim.keymap.set('n', '<leader>fd', oil.discard_all_changes, { desc = '[F]ile tree [D]iscard' })
	end
}
