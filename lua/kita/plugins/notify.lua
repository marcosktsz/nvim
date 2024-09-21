return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		notify.setup({
			render = "minimal",
			stages = "static",
			timeout = 1000,
		})
	end,
}
