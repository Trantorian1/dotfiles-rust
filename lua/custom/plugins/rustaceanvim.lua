return {
	{
		'mrcjkb/rustaceanvim',
		dependencies = {
			'lvimuser/lsp-inlayhints.nvim',
			'artemave/workspace-diagnostics.nvim'
		},
		version = '^4', -- Recommended
		ft = { 'rust' },
		config = function()
			vim.g.rustaceanvim = {
				inlay_hints = {
					highlight = "NonText",
				},
				tools = {
					enable_clippy = false,
					hover_actions = {
						auto_focus = true,
					},
				},
				server = {
					on_attach = function(client, bufnr)
						require("lsp-inlayhints").on_attach(client, bufnr)
						require('workspace-diagnostics').populate_workspace_diagnostics(client, bufnr)
					end
				}
			}
		end
	}
}
