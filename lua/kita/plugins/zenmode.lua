return {
	"folke/zen-mode.nvim",
	dependencies = { "folke/twilight.nvim" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	vim.keymap.set("n", "<leader>zm", "<cmd>ZenMode<CR>", { desc = "Toggle zen mode" }),
}
