return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		require("dapui").setup({
			layouts = {
				{
					elements = {
						{
							id = "scopes",
							size = 0.3,
						},
						{
							id = "breakpoints",
							size = 0.3,
						},
						{
							id = "repl",
							size = 0.4,
						},
					},
					position = "right",
					size = 60,
				},
			},
		})
		local dap = require("dap")
		local dapui = require("dapui")
		local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
		require("dap-python").setup(path)
		require("nvim-dap-virtual-text").setup({})

		-- evaluate var under cursor
		vim.keymap.set("n", "<leader>de", function()
			require("dapui").eval(nil, { enter = true })
		end, { desc = "Evaluate variable under cursor" })

		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
		vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debugger Continue " })

		vim.keymap.set("n", "<leader>dt", function()
			require("dapui").toggle()
		end, { desc = "Toggle debugger UI" })

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
