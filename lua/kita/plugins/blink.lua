local function is_dap_buffer()
	return require("cmp_dap").is_dap_buffer()
end
return {
	{
		"saghen/blink.compat",
		version = "*",
		lazy = true,
		opts = {},
	},
	{
		"saghen/blink.cmp",
		dependencies = {
			"rafamadriz/friendly-snippets",
			"rcarriga/cmp-dap",
			"Kaiser-Yang/blink-cmp-avante",
		},
		version = "1.*",

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			keymap = {
				preset = "none",
				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
				["<C-s>"] = { "show" },
				["<Up>"] = { "select_prev", "fallback" },
				["<Down>"] = { "select_next", "fallback" },
				["<CR>"] = { "select_and_accept", "fallback" },
				["<C-a>"] = {
					function(cmp)
						if vim.b[vim.api.nvim_get_current_buf()].nes_state then
							cmp.hide()
							return require("copilot-lsp.nes").apply_pending_nes()
						end
						if cmp.snippet_active() then
							return cmp.accept()
						else
							return cmp.select_and_accept()
						end
					end,
					"snippet_forward",
					"fallback",
				},
			},
			enabled = function()
				return vim.bo.buftype ~= "prompt" or is_dap_buffer()
			end,
			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},

			completion = {
				menu = {
					border = "rounded",
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 250,
					window = {
						border = "rounded",
					},
				},
			},

			sources = {
				default = function()
					if is_dap_buffer() then
						return { "lsp", "path", "snippets", "buffer", "dadbod", "dap", "avante" }
					end
					return { "lsp", "path", "snippets", "buffer", "dadbod", "avante" }
				end,
				providers = {
					dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
					snippets = { min_keyword_length = 2 },
					dap = { name = "dap", module = "blink.compat.source" },
					avante = {
						module = "blink-cmp-avante",
						name = "Avante",
						opts = {
							-- options for blink-cmp-avante
						},
					},
				},
			},
		},
		opts_extend = { "sources.default" },
	},
}
