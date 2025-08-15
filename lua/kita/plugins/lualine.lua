return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"letieu/harpoon-lualine",
	},
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")
		local function maximize_status()
			return vim.t.maximized and "Maximized   " or ""
		end
		local function split(str, delimiter)
			local result = {}
			for match in (str .. delimiter):gmatch("(.-)" .. delimiter) do
				table.insert(result, match)
			end
			return result
		end
		local function get_harpoon_indicator(harpoon_entry)
			local array = split(harpoon_entry.value, "/")
			local file = array[#array]
			return file:match("(.+)%..+$") or file
		end

		lualine.setup({
			options = {
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
				disabled_filetypes = {
					"dapui_watches",
					"dapui_breakpoints",
					"dapui_scopes",
					"dapui_console",
					"dapui_stacks",
					"dap-repl",
					"Avante",
					"AvanteInput",
					"AvanteSelectedFiles",
				},
				refresh = {
					statusline = 100,
					tabline = 100,
					winbar = 100,
				},
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
				lualine_y = {
					{
						"harpoon2",
						icon = "♥",
						indicators = {
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
						},
						active_indicators = {
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
							get_harpoon_indicator,
						},
						color_active = { fg = "#d1feb8" },
						_separator = " | ",
						no_harpoon = "Harpoon not loaded",
					},
				},
				lualine_x = {
					{
						function()
							local reg = vim.fn.reg_recording()
							if reg == "" then
								return ""
							end
							return "recording @" .. reg
						end,
						color = { fg = "#ff9e64" },
					},
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
				lualine_z = {
					{ "location", separator = { right = "" }, left_padding = 2 },
				},
			},
		})
	end,
}
