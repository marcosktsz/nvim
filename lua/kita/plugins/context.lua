return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		vim.keymap.set("n", "<leader>ctx", "<cmd>TSContextToggle<CR>")
		local treeContext = require("treesitter-context").setup({
			multiline_threshold = 1,
		})
	end,
}
