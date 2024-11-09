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

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope buffers" })
		keymap.set("n", "<leader>fl", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "LSP declarations" })

		-- git shortcuts
		keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Telescope git status" })
		keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Telescope git branches" })
		keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Telescope git files" })
		keymap.set("n", "<leader>tr", "<cmd>Telescope resume<cr>", { desc = "Resume previous telescope research" })
	end,
}
