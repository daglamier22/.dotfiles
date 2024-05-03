return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			config = function()
				require("dapui").setup()
			end,
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

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

			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<leader>dc", dap.continue, {})
		end,
	},
	{
		"leoluz/nvim-dap-go",
		--		ft = "go",
		dependencies = {
			"mfussengger/nvim-dap",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			require("dap-go").setup()

			vim.keymap.set("n", "<leader>dgt", function()
				require("dap-go").debug_test()
			end)
			vim.keymap.set("n", "<leader>dgl", function()
				require("dap-go").debug_last()
			end)
		end,
	},
}
