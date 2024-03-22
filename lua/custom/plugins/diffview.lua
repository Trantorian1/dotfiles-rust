return {
	{
		'sindrets/diffview.nvim',
		config = function()
			local diffview = require('diffview')
			local actions = require("diffview.actions")

			local desc = function(desc)
				return 'Merge: ' .. desc
			end

			diffview.setup {
				view = {
					merge_tool = {
						layout = "diff3_mixed"
					}
				},
				keymaps = {
					view = {
						{ "n", "[x",         actions.prev_conflict,                 { desc = desc("jump to next conflit") } },
						{ "n", "]x",         actions.next_conflict,                 { desc = desc("jump to previous conflit") } },
						{ "n", "<leader>co", actions.conflict_choose("ours"),       { desc = desc("[C]hoose [O]urs (single diff)") } },
						{ "n", "<leader>ct", actions.conflict_choose("theirs"),     { desc = desc("[C]hoose [T]heirs (single diff)") } },
						{ "n", "<leader>cb", actions.conflict_choose("base"),       { desc = desc("[C]hoose [B]ase (single diff)") } },
						{ "n", "<leader>ca", actions.conflict_choose("all"),        { desc = desc("[C]hoose [A]ll (single diff)") } },
						{ "n", "<leader>cn", actions.conflict_choose("none"),       { desc = desc("[C]hoose [N]one (single diff)") } },
						{ "n", "<leader>cO", actions.conflict_choose_all("ours"),   { desc = desc("[C]hoose [O]urs (all diffs)") } },
						{ "n", "<leader>cT", actions.conflict_choose_all("theirs"), { desc = desc("[C]hoose [T]heirs (all diffs)") } },
						{ "n", "<leader>cB", actions.conflict_choose_all("base"),   { desc = desc("[C]hoose [B]ase (all diffs)") } },
						{ "n", "<leader>cA", actions.conflict_choose_all("all"),    { desc = desc("[C]hoose [A]ll (all diffs)") } },
						{ "n", "dX",         actions.conflict_choose_all("none"),   { desc = desc("[C]hoose [N]one (all diffs)") } },
					}
				}
			}
		end
	}
}
