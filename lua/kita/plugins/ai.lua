return {
	{
		"folke/sidekick.nvim",
		event = "VeryLazy",
		opts = {
			cli = {
				mux = {
					backend = "tmux",
					enabled = true,
				},
			},
		},
		keys = {
			{
				"<C-f>",
				function()
					if require("sidekick").nes_jump_or_apply() then
						return -- jumped or applied
					end

					if vim.lsp.inline_completion.get() then
						return
					end

					return "<C-f>"
				end,
				mode = { "i", "n" },
				expr = true,
				desc = "Goto/Apply Next Edit Suggestion",
			},
			{
				"<leader>ap",
				function()
					require("sidekick.cli").select_prompt()
				end,
				desc = "Sidekick Ask Prompt",
				mode = { "n", "v" },
			},
		},
	},
}
