return {
	{
		"olimorris/codecompanion.nvim",
		opts = {},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			{ "nvim-tree/nvim-web-devicons", opts = {} },
		},
		config = function()
			require("codecompanion").setup({
				strategies = {
					chat = {
						adapter = "githubmodels",
					},
					inline = {
						adapter = "copilot",
					},
				},
			})
			vim.keymap.set(
				{ "n", "v" },
				"<leader>cca",
				"<cmd>CodeCompanionActions<cr>",
				{ noremap = true, silent = true }
			)
			vim.keymap.set(
				{ "n", "v" },
				"<leader>ai",
				"<cmd>CodeCompanionChat Toggle<cr>",
				{ noremap = true, silent = true }
			)
			vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

			vim.cmd([[cab cc CodeCompanion]])
		end,
	},
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown", "codecompanion" },
		opts = {
			render_modes = true,
			sign = {
				enabled = false,
			},
		},
	},
}
