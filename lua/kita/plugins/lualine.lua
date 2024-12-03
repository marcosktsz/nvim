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
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_c = { maximize_status },
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
