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
		dependencies = { "rafamadriz/friendly-snippets", "rcarriga/cmp-dap" },
		version = "1.0.0",

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			cmdline = {
				keymap = {
					preset = "none",
					["<c-k>"] = { "select_prev", "fallback" },
					["<c-j>"] = { "select_next", "fallback" },
					["<C-y>"] = { "hide", "fallback" },
					["<CR>"] = { "select_accept_and_enter", "fallback" },
				},
			},
			keymap = {
				preset = "none",
				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
				["<C-s>"] = { "show" },
				["<Up>"] = { "select_prev", "fallback" },
				["<Down>"] = { "select_next", "fallback" },
				["<CR>"] = { "select_and_accept", "fallback" },
				["<Tab>"] = { "snippet_forward", "fallback" },
				["<S-Tab>"] = { "snippet_backward", "fallback" },
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
						return { "lsp", "path", "snippets", "buffer", "dadbod", "dap", "codecompanion" }
					end
					return { "lsp", "path", "snippets", "buffer", "dadbod", "codecompanion" }
				end,
				providers = {
					dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
					snippets = { min_keyword_length = 2 },
					dap = { name = "dap", module = "blink.compat.source" },
				},
			},
		},
		opts_extend = { "sources.default" },
	},
}
