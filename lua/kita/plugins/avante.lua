return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	lazy = false,
	build = "make",
	dependencies = {
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		--- The below dependencies are optional,
		"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
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
				set_copilot_keymap("i", "<C-]>", 'copilot#Next()')
			end,
		},
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
	opts = { provider = "copilot", silent = true },
}
