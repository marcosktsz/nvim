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
			vim.keymap.set("i", "<C-f>", 'copilot#Accept("<CR>")', {
				expr = true,
				replace_keycodes = false,
        silent = true,
			}),
		},
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
	opts = { provider = "copilot" },
}
