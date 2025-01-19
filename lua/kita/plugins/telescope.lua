return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			pickers = {
				ignore_current_buffer = true,
				sort_lastused = true,
				find_files = {
					previewer = false, -- Disables preview for the find_files picker
					theme = "dropdown",
				},
			},
			defaults = {
				winbled = 100,
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["C-c"] = actions.close,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- keymap.set(
		-- 	"n",
		-- 	"<leader>fw",
		-- 	"<cmd>Telescope lsp_dynamic_workspace_symbols<cr>",
		-- 	{ desc = "LSP document symbols" }
		-- )
		keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Telescope git branches" })
	end,
}
