return {
	"norcalli/nvim-colorizer.lua",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local colorizer = require("colorizer")
		colorizer.setup({
			"css",
			"javascript",
			"typescript",
			html = {
				mode = "foreground",
			},
		})

		vim.cmd("ColorizerToggle")
	end,
}
