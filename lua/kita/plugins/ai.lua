return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{
				"zbirenbaum/copilot.lua",
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
			{
				"MeanderingProgrammer/render-markdown.nvim",
				opts = {
					file_types = { "markdown", "copilot-chat" },
				},
				ft = { "markdown", "copilot-chat" },
				config = function(_, opts)
					require("render-markdown").setup({
						code = {
							disable_background = { "diff" },
						},
					})
				end,
			},
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {},
		vim.keymap.set({ "n", "v" }, "<leader>ai", "<cmd>CopilotChatToggle<CR>"),
		vim.keymap.set("v", "<leader>ccm", "<cmd>CopilotChatModels<CR>"),
		vim.keymap.set("v", "<leader>cco", "<cmd>CopilotChatOptimize<CR>"),
		vim.keymap.set("v", "<leader>ccr", "<cmd>CopilotChatReview<CR>"),
		vim.keymap.set("v", "<leader>cce", "<cmd>CopilotChatExplain<CR>"),
		vim.keymap.set("v", "<leader>ccf", "<cmd>CopilotChatFix<CR>"),
	},
}
-- {
-- 	"github/copilot.vim",
-- 	config = function()
-- 		local function set_copilot_keymap(mode, lhs, rhs)
-- 			vim.keymap.set(mode, lhs, rhs, {
-- 				expr = true,
-- 				replace_keycodes = false,
-- 				silent = true,
-- 			})
-- 		end
--
-- 		set_copilot_keymap("i", "<C-f>", 'copilot#Accept("<CR>")')
-- 		set_copilot_keymap("i", "<C-]>", "copilot#Next()")
-- 		vim.g.copilot_no_tab_map = true
-- 	end,
-- },
--
