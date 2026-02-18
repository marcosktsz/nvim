return {
	"leonardcser/cursortab.nvim",
	build = "cd server && go build",
	config = function()
		require("cursortab").setup({
			provider = {
				type = "sweepapi",
				api_key_env = "SWEEPAPI_TOKEN",
			},
		})
	end,
}
