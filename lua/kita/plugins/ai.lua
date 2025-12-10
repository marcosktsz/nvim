return {
	{
		"folke/sidekick.nvim",
		event = "VeryLazy",
		opts = {
			nes = {
				debounce = 50,
				trigger = {
					events = { "InsertEnter", "TextChangedI", "TextChanged", "User SidekickNesDone", "InsertLeave" },
				},
			},
			cli = {
				mux = {
					backend = "tmux",
					enabled = true,
				},
			},
		},
		keys = {
			{
				"<Tab>",
				function()
					if require("sidekick").nes_jump_or_apply() then
						return -- jumped or applied
					end

					if vim.lsp.inline_completion.get() then
						return
					end

					return "<Tab>"
				end,
				mode = { "i", "n" },
				expr = true,
				desc = "Goto/Apply Next Edit Suggestion",
			},
			{
				"<leader>ap",
				function()
					require("sidekick.cli").prompt()
				end,
				desc = "Sidekick Ask Prompt",
				mode = { "n", "v" },
			},
		},
	},
}
