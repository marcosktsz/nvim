return {
	{
		"folke/sidekick.nvim",
		event = "VeryLazy",
		opts = {
			cli = {
				mux = {
					backend = "tmux",
					enabled = true,
				},
			},
		},
		keys = {
			{
				"<tab>",
				function()
					if require("sidekick").nes_jump_or_apply() then
						return -- jumped or applied
					end

					if vim.lsp.inline_completion.get() then
						return
					end

					return "<tab>"
				end,
				mode = { "i", "n" },
				expr = true,
				desc = "Goto/Apply Next Edit Suggestion",
			},
		},
	},
	{
		"NickvanDyke/opencode.nvim",
		dependencies = { "folke/snacks.nvim" },
		---@type opencode.Config
		opts = {
			-- Your configuration, if any
		},
  -- stylua: ignore
  keys = {
    { '<leader>ot', function() require('opencode').toggle() end, desc = 'Toggle embedded opencode', },
    { '<leader>oa', function() require('opencode').ask() end, desc = 'Ask opencode', mode = 'n', },
    { '<leader>oa', function() require('opencode').ask('@selection: ') end, desc = 'Ask opencode about selection', mode = 'v', },
    { '<leader>op', function() require('opencode').select_prompt() end, desc = 'Select prompt', mode = { 'n', 'v', }, },
    { '<leader>on', function() require('opencode').command('session_new') end, desc = 'New session', },
    { '<leader>oy', function() require('opencode').command('messages_copy') end, desc = 'Copy last message', },
    { '<S-C-u>',    function() require('opencode').command('messages_half_page_up') end, desc = 'Scroll messages up', },
    { '<S-C-d>',    function() require('opencode').command('messages_half_page_down') end, desc = 'Scroll messages down', },
  },
	},
}
