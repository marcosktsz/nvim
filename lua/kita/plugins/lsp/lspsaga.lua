return {
	"nvimdev/lspsaga.nvim",
	config = function()
		require("lspsaga").setup({
      lightbulb = {
        enable = false
      }
    })
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
}
