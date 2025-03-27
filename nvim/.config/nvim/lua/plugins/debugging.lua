return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "suketa/nvim-dap-ruby",
    "rcarriga/nvim-dap-ui",
    'nvim-neotest/nvim-nio',
  },
  config = function()
    -- local dap = require('dap')
    local dap, dapui = require("dap"), require("dapui")
    dap.set_log_level('TRACE')

    vim.keymap.set('n', '<F5>', function() dap.continue() end)
    vim.keymap.set('n', '<F10>', function() dap.step_over() end)
    vim.keymap.set('n', '<F11>', function() dap.step_into() end)
    vim.keymap.set('n', '<F12>', function() dap.step_out() end)
    vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
    vim.keymap.set('n', '<Leader>B', function() dap.set_breakpoint() end)
    vim.keymap.set('n', '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
    vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
    vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
    -- require("dap-ruby").setup()

    -- vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
    -- 	require('dap.ui.widgets').hover()
    -- end)
    -- vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
    -- 	require('dap.ui.widgets').preview()
    -- end)
    -- vim.keymap.set('n', '<Leader>df', function()
    -- 	local widgets = require('dap.ui.widgets')
    -- 	widgets.centered_float(widgets.frames)
    -- end)
    -- vim.keymap.set('n', '<Leader>ds', function()
    -- 	local widgets = require('dap.ui.widgets')
    -- 	widgets.centered_float(widgets.scopes)
    -- end)

    -- dap.adapters.ruby = function(callback, config)
    --   local waiting = config.waiting or 500
    --   callback {
    -- 	type = "server",
    -- 	host = "127.0.0.1",
    -- 	port = "${port}",
    -- 	executable = {
    -- 	  command = "bundle",
    -- 	  args = { "exec", "rdbg", "-n", "--open", "--port", "${port}",
    -- 		"-c", "--", "bundle", "exec", config.command, config.script,
    -- 	  },
    -- 	},
    --   }
    -- end
    --
    -- dap.configurations.ruby = {
    -- 	{
    -- 		type = "ruby",
    -- 		name = "run rails",
    -- 		bundle = "bundle",
    -- 		request = "attach",
    -- 		command = "rails",
    -- 		script = "s",
    -- 		port = 38698,
    -- 		server = "127.0.0.1",
    -- 		options = {
    -- 			source_filetype = "ruby",
    -- 		},
    -- 		localfs = true,
    -- 		waiting = 10000,
    -- 	}
    -- }
    dap.adapters.ruby = {
      type = 'server',
      port = "1234",
      command = 'bin/rdbg',
      args = { "--open", "--port", "1234", "--" },
      -- useBundler = true;
      -- rdbg --command --open --stop-at-load --port 1234 -- bin/rails s
    }
    --
    dap.configurations.ruby = {
      {
        type = 'ruby',
        request = 'launch',
        name = 'ruby debug: start rails',
        command = 'bin/rails s',
        useBundler = true,
        console = "internalConsole",
      },
    }

    dapui.setup()
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
