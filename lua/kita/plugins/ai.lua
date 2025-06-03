return {
  {
    "azorng/goose.nvim",
    config = function()
      require("goose").setup({
        keymap = {
          global = {
            select_session = '<leader>gos',
          }
        },
        ui = {
          window_width = 0.45,
        }
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          anti_conceal = { enabled = false },
        },
        config = function()
          require("render-markdown").setup({
            code = {
              width = 'block',
              left_pad = 2,
              language_name = false,
              language_icon = false,
              language_pad = 2,
              disable_background = true
            }
          })
        end,
      }
    },
  },
	{
		"supermaven-inc/supermaven-nvim",
		config = function()
			require("supermaven-nvim").setup({
				keymaps = {
					accept_suggestion = "<C-f>",
					clear_suggestion = "<C-]>",
					accept_word = "<C-w>",
				},
			})
		end,
	},
}
