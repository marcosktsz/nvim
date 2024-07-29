return {
	{
		"zenbones-theme/zenbones.nvim",
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			vim.cmd([[colorscheme forestbones]])
		end,
	},
}
