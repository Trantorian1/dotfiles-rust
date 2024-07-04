return {
	'chrisgrieser/nvim-rip-substitute',
	cmd = "RipSubstitute",
	keys = {
		{
			"<leader>srl",
			function()
				require("rip-substitute").sub()
			end,
			mode = { "n", "x" },
			desc = "[S]earch and [R]eplace [L]ocally",
		},
	},
}
