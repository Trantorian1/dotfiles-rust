return {
	{
		'saecki/crates.nvim',
		tag = 'stable',
		event = { "BufRead Cargo.toml" },
		config = function()
			require('crates').setup()
		end,
		keys  = {
			{
				"<leader>ci",
				function()
					require("crates").show_crate_popup()
					require("crates").focus_popup()
				end,
				{ desc = '[C]rate [I]nfo' }
			},
			{
				"<leader>cf",
				function()
					require("crates").show_features_popup()
					require("crates").focus_popup()
				end,
				{ desc = '[C]rate [F]eatures' }
			},
			{
				"<leader>cv",
				function()
					require("crates").show_versions_popup()
					require("crates").focus_popup()
				end,
				desc = '[C]rate [V]ersion'
			},
			{
				"<leader>cu",
				function()
					require("crates").upgrade_crate()
				end,
				{ desc = '[C]rate [U]prage' }
			},
			{
				"<leader>cua",
				function()
					require("crates").upgrade_all_crates()
				end,
				{ desc = '[C]rate [U]prage [A]ll' }
			},
			{
				"<leader>cU",
				function()
					require("crates").update_crate()
				end,
				{ desc = '[C]rate [U]pdate' }
			},
			{
				"<leader>cUa",
				function()
					require("crates").update_all_crates()
				end,
				{ desc = '[C]rate [U]pdate [A]ll' }
			}
		}
	}
}
