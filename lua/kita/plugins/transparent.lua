local setup, transparent = pcall(require, "transparent")
if not setup then
	return
end

transparent.setup({
	extra_groups = {
		"NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
		"NvimTreeNormal", -- NvimTree
	},
})
