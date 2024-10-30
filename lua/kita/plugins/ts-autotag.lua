return {
	{
		"windwp/nvim-ts-autotag",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		event = "InsertEnter",
		config = function()
			require("nvim-ts-autotag").setup()
		end,
	},
}
