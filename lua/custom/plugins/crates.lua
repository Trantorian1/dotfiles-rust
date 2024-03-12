return {
	{
		'saecki/crates.nvim',
		tag = 'stable',
		event = { "BufRead Cargo.toml" },
		config = function()
			require('crates').setup()

			local crates = require("crates")

			vim.keymap.set('n', '<leader>ci', function()
				crates.show_crate_popup()
				crates.focus_popup()
			end, { desc = '[C]rate [I]nfo' })

			vim.keymap.set('n', '<leader>cf', function()
				crates.show_features_popup()
				crates.focus_popup()
			end, { desc = '[C]rate [F]eatures' })

			vim.keymap.set('n', '<leader>cv', function()
				crates.show_versions_popup()
				crates.focus_popup()
			end, { desc = '[C]rate [V]ersion' })

			vim.keymap.set('n', '<leader>cu', crates.upgrade_crate, { desc = '[C]rate [U]prage' })
			vim.keymap.set('n', '<leader>cua', crates.upgrade_all_crates, { desc = '[C]rate [U]prage [A]ll' })

			vim.keymap.set('n', '<leader>cU', crates.update_crate, { desc = '[C]rate [U]pdate' })
			vim.keymap.set('n', '<leader>cUa', crates.update_all_crates, { desc = '[C]rate [U]pdate [A]ll' })
		end
	}
}
