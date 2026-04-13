return {
	"leonardcser/cursortab.nvim",
	build = "cd server && go build",
	config = function()
		require("cursortab").setup({
			provider = {
				type = "mercuryapi",
				api_key_env = "MERCURY_AI_TOKEN",
			},
			behavior = {
				ignore_paths = {
					"*.csv",
					"*.md",
				},
			},
		})
	end,
}
