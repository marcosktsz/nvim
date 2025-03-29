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
	vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true }),
	vim.keymap.set({ "n", "v" }, "<leader>kk", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true }),
	vim.keymap.set("v", "<leader>ka", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true }),

	-- Expand 'cc' into 'CodeCompanion' in the command line
	vim.cmd([[cab cc CodeCompanion]]),
}
