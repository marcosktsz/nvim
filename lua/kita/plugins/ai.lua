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
		config = function()
			require("copilot-lsp").setup({
				nes = {
					move_count_threshold = 3,
				},
			})
		end,
	},
  {
    "azorng/goose.nvim",
    config = function()
      require("goose").setup({
        keymap = {
          global = {
            select_session = '<leader>gos',
            open_input = '<C-g>',
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
