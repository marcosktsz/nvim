vim.cmd("colorscheme tokyonight")

local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
	print("Colorscheme not found")
	return
end
