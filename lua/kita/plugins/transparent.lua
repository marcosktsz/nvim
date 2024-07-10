return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({ -- Optional, you don't have to run setup.
			groups = { -- table: default groups
				"Normal",
				"NormalNC",
				"Comment",
				"Constant",
				"Special",
				"Identifier",
				"Statement",
				"PreProc",
				"Type",
				"Underlined",
				"Todo",
				"String",
				"Function",
				"Conditional",
				"Repeat",
				"Operator",
				"Structure",
				"LineNr",
				"NonText",
				"SignColumn",
				"CursorLine",
				"CursorLineNr",
				"StatusLine",
				"StatusLineNC",
				"EndOfBuffer",
			},
			extra_groups = {
				"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
				"NvimTreeNormal", -- NvimTree
			}, -- table: additional groups that should be cleared
			exclude_groups = {}, -- table: groups you don't want to clear
		})
	end,
}
