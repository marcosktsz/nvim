return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		vim.keymap.set("n", "<leader>ctx", "<cmd>TSContextToggle<CR>")
	end,
}
