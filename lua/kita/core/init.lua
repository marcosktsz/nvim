require("kita.core.options")
require("kita.core.keymaps")

-- NEOVIDE CONFIGURATION
if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font Mono:h12:b" -- text below applies for VimScript
	vim.g.neovide_window_blurred = true
	vim.g.neovide_transparency = 0.92
	vim.g.neovide_scroll_animation_length = 0.3
	vim.g.neovide_refresh_rate = 60
	vim.g.neovide_refresh_rate_idle = 5
	vim.g.neovide_cursor_antialiasing = true
	vim.g.neovide_cursor_animate_in_insert_mode = true
end
