return {
	{
		"copilotlsp-nvim/copilot-lsp",
		init = function()
			vim.g.copilot_nes_debounce = 100
			vim.lsp.enable("copilot_ls")
			vim.keymap.set("n", "<C-a>", function()
				local _ = require("copilot-lsp.nes").walk_cursor_start_edit()
					or (
						require("copilot-lsp.nes").apply_pending_nes()
						and require("copilot-lsp.nes").walk_cursor_end_edit()
					)
			end)
		end,
	},
	{
		"github/copilot.vim",
		config = function()
			local function set_copilot_keymap(mode, lhs, rhs)
				vim.keymap.set(mode, lhs, rhs, {
					expr = true,
					replace_keycodes = false,
					silent = true,
				})
			end

			set_copilot_keymap("i", "<C-f>", 'copilot#Accept("<CR>")')
			set_copilot_keymap("i", "<C-]>", "copilot#Next()")
			vim.g.copilot_no_tab_map = true
		end,
	},
}
