require("kita.core.options")
require("kita.core.keymaps")

-- NEOVIDE CONFIGURATION
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font Mono:h12:b" -- text below applies for VimScript
	vim.g.neovide_window_blurred = true
	vim.g.neovide_transparency = 0.9
	vim.g.neovide_scroll_animation_length = 0.3
	vim.g.neovide_refresh_rate = 60
	vim.g.neovide_refresh_rate_idle = 5
	vim.g.neovide_cursor_antialiasing = true
	vim.g.neovide_cursor_animate_in_insert_mode = true
end

vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
	callback = function()
		local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
		if not normal.bg then
			return
		end
		io.write(string.format("\027Ptmux;\027\027]11;#%06x\007\027\\", normal.bg))
		io.write(string.format("\027]11;#%06x\027\\", normal.bg))
	end,
})

vim.api.nvim_create_autocmd("UILeave", {
	callback = function()
		io.write("\027Ptmux;\027\027]111;\007\027\\")
		io.write("\027]111\027\\")
	end,
})
