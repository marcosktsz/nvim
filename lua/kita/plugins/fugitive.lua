return {
	"tpope/vim-fugitive",

	config = function()
		vim.keymap.set("n", "gh", "<cmd>diffget //2<cr>") -- grab the changes on the left
		vim.keymap.set("n", "gl", "<cmd>diffget //3<cr>") -- grab the changes on the right
	end,
}
