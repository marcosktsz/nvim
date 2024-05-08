return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = {},
	vim.keymap.set("n", "<leader>ru", "<cmd>TSToolsRemoveUnusedImports<CR>", { desc = "Remove unused ts imports" }),
}
