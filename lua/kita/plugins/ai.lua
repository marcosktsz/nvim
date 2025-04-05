return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	version = "0.0.23",
	opts = {
		provider = "copilot",
		windows = {
			width = 45,
		},
	},
	build = "make",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"echasnovski/mini.pick",
		"nvim-telescope/telescope.nvim",
		"ibhagwan/fzf-lua",
		"nvim-tree/nvim-web-devicons",
		"Kaiser-Yang/blink-cmp-avante",
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
		{
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				default = {
					embed_image_as_base64 = false,
					prompt_for_file_name = false,
					drag_and_drop = {
						insert_mode = true,
					},
					use_absolute_path = true,
				},
			},
		},
		{
			"MeanderingProgrammer/render-markdown.nvim",
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
