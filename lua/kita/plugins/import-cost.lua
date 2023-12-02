local setup, importCost = pcall(require, "import-cost.nvim")
if not setup then
	return
end

importCost.setup({
	build = "sh install.sh yarn",
	-- if on windows
	-- build = 'pwsh install.ps1 yarn',
	config = true,
})
