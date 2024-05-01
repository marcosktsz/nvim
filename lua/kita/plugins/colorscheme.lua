return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,

		config = function()
			vim.cmd([[colorscheme kanagawa]])
		end,
	},
}
