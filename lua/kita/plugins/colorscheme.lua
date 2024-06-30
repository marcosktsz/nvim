return {
	{
		"sho-87/kanagawa-paper.nvim",
		-- "shaunsingh/nord.nvim",
		priority = 1000,

		config = function()
			vim.cmd([[colorscheme kanagawa-paper]])
		end,
	},
}
