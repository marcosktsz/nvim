return {
	{
		"copilotlsp-nvim/copilot-lsp",
		init = function()
			vim.g.copilot_nes_debounce = 0
			vim.lsp.enable("copilot")
			vim.keymap.set("n", "<C-a>", function()
				require("copilot-lsp.nes").apply_pending_nes()
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
