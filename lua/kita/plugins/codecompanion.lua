return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		{
			"github/copilot.vim",
			config = function()
				local function set_copilot_keymap(mode, lhs, rhs)
					vim.keymap.set(mode, lhs, rhs, {
						expr = true,
						replace_keycodes = false,
						silent = true,
					})
				end

				set_copilot_keymap("i", "<C-f>", 'copilot#Accept("<CR>")')
				set_copilot_keymap("i", "<C-]>", "copilot#Next()")
				vim.g.copilot_no_tab_map = true
			end,
		},
	},
	config = function()
		local codecompanion = require("codecompanion")
		codecompanion.setup({
			strategies = {
				chat = {
					adapter = "githubmodels",
				},
				inline = {
					adapter = "copilot",
				},
			},
		})
	end,
	vim.keymap.set({ "n", "v" }, "<leader>kk", "<cmd>CodeCompanionChat<CR>"),
	vim.keymap.set({ "n", "v" }, "<leader>ka", "<cmd>CodeCompanionActions<CR>"),
	vim.keymap.set("v", "<leader>kv", "<cmd>CodeCompanionChat Add<CR>"),
}
