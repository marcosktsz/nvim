return {
	"mfussenegger/nvim-dap-python",
	ft = { "python", "javascript", "typescript" },
	build = false,
	dependencies = {
		{ "mfussenegger/nvim-dap", build = false },
		{ "rcarriga/nvim-dap-ui", build = false },
		{ "nvim-neotest/nvim-nio", build = false },
		{ "theHamsta/nvim-dap-virtual-text", build = false },
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

		vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DiagnosticError", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointCondition", { text = "◉", texthl = "DiagnosticWarn", linehl = "", numhl = "" })
		vim.fn.sign_define("DapStopped", { text = "▶", texthl = "DiagnosticOk", linehl = "", numhl = "" })
		vim.fn.sign_define("DapBreakpointRejected", { text = "✕", texthl = "DiagnosticError", linehl = "", numhl = "" })

		-- JavaScript setup
		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = "${port}",
			executable = {
				command = "js-debug-adapter",
				args = { "${port}" },
			}
		}

    dap.configurations.python = {
			{
        justMyCode = false,
				type = "python",
				request = "attach",
				name = "Attach to Port",
        port = 5678,
			}
		}


		dap.configurations.javascript = {
			{
				type = "pwa-node",
				request = "attach",
				name = "Attach to Port",
				port = 9229,
				cwd = "${workspaceFolder}",
				sourceMaps = true,
				resolveSourceMapLocations = {
					"${workspaceFolder}/**",
					"!**/node_modules/**"
				},
				skipFiles = {
					"<node_internals>/**",
					"**/node_modules/**"
				}
			}
		}

	dap.configurations.typescript = {
			{
				type = "pwa-node",
				request = "attach",
				name = "Attach to Port",
				port = 9229,
				cwd = "${workspaceFolder}",
				sourceMaps = true,
				resolveSourceMapLocations = {
					"${workspaceFolder}/**",
					"!**/node_modules/**"
				},
				skipFiles = {
					"<node_internals>/**",
					"**/node_modules/**"
				}
			}
		}

		-- evaluate var under cursor
		vim.keymap.set("n", "<leader>de", function()
			require("dapui").eval(nil, { enter = true })
		end, { desc = "Evaluate variable under cursor" })

		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
		vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debugger Continue " })
		vim.keymap.set("n", "<F8>", dap.continue, { desc = "Debugger Continue " })
		vim.keymap.set("n", "<F9>", dap.step_into, { desc = "Debugger Step Into" })
		vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Debugger Step Over" })
		vim.keymap.set("n", "<F11>", dap.step_out, { desc = "Debugger Step Out" })
		vim.keymap.set("n", "<leader>dx", dap.terminate, { desc = "Terminate debugger" })

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
