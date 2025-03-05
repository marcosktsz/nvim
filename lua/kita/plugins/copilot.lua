return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
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
				set_copilot_keymap("i", "<C-]>", 'copilot#Next()')
			end,
		},
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
    },
    vim.keymap.set({"n", "v"}, "<leader>cc", "<cmd>CopilotChatToggle<CR>"),
    vim.keymap.set("v", "<leader>cm", "<cmd>CopilotChatModels<CR>"),
    vim.keymap.set("v", "<leader>co", "<cmd>CopilotChatOptimize<CR>"),
    vim.keymap.set("v", "<leader>cr", "<cmd>CopilotChatReview<CR>"),
    vim.keymap.set("v", "<leader>ce", "<cmd>CopilotChatExplain<CR>"),
    vim.keymap.set("v", "<leader>cf", "<cmd>CopilotChatFix<CR>"),
  },
}
