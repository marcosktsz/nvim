return {
	"ggandor/leap.nvim",
	enabled = true,
	config = function(_, opts)
		local leap = require("leap")
		leap.add_default_mappings(true)
	end,
}
