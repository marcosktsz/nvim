return {
	"folke/zen-mode.nvim",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		alacritty = {
			enabled = true,
		},
	},
	vim.keymap.set("n", "<leader>zm", "<cmd>ZenMode<CR>", { desc = "Toggle zen mode" }),
}
