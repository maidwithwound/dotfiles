local dap = require('dap')

-- configure
dap.adapters.netcoredbg = {
  type = 'executable',
  command = '/home/sonya/d/prog/netcoredbg/netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.adapters.codelldb = function(callback, config)
-- specify in your configuration host = your_host , port = your_port
    callback({ type = "server", host = "127.0.0.1", port = 1234 })
end
---- dap.adapters.codelldb = function(on_adapter)
----   local stdout = vim.loop.new_pipe(false)
----   local stderr = vim.loop.new_pipe(false)
---- 
----   -- CHANGE THIS!
----   local cmd = '/home/sonya/d/progs/codelldb/adapter/codelldb'
---- 
----   local handle, pid_or_err
----   local opts = {
----     stdio = {nil, stdout, stderr},
----     '--params \'{"showDisassembly" : "never"}\'',
----     detached = true,
----   }
----   handle, pid_or_err = vim.loop.spawn(cmd, opts, function(code)
----     stdout:close()
----     stderr:close()
----     handle:close()
----     if code ~= 0 then
----       print("codelldb exited with code", code)
----     end
----   end)
----   assert(handle, "Error running codelldb: " .. tostring(pid_or_err))
----   stdout:read_start(function(err, chunk)
----     assert(not err, err)
----     if chunk then
----       local port = chunk:match('Listening on port (%d+)')
----       if port then
----         vim.schedule(function()
----           on_adapter({
----             type = 'server',
----             host = '127.0.0.1',
----             port = port
----           })
----         end)
----       else
----         vim.schedule(function()
----           require("dap.repl").append(chunk)
----         end)
----       end
----     end
----   end)
----   stderr:read_start(function(err, chunk)
----     assert(not err, err)
----     if chunk then
----       vim.schedule(function()
----         require("dap.repl").append(chunk)
----       end)
----     end
----   end)
---- end

-- dap.adapters.cppdbg = {
--   id = 'cppdbg',
--   type = 'executable',
--   command = '/home/sonya/d/progs/cpptools/debugAdapters/bin/OpenDebugAD7',
-- }
dap.configurations.cs = {{
  type = "netcoredbg",
  name = "launch - netcoredbg",
  request = "launch",
  program = function() return "${workspaceFolder}/bin/Debug/net6.0/VKAvaloniaPlayer.dll" end,
}}

-- terminal configuration
------ dap.defaults.fallback.terminal_win_cmd = '50vsplit new'
dap.defaults.fallback.external_terminal = {
  command = '/usr/bin/alacritty';
  args = {'-e'};
}
-- require('dap.ext.vscode').load_launchjs()

-- dap-ui
require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
  },
  sidebar = {
    -- You can change the order of elements in the sidebar
    elements = {
      -- Provide as ID strings or tables with "id" and "size" keys
      {
        id = "scopes",
        size = 0.25, -- Can be float or integer > 1
      },
      { id = "breakpoints", size = 0.25 },
      { id = "stacks", size = 0.25 },
      { id = "watches", size = 00.25 },
    },
    size = 40,
    position = "left", -- Can be "left", "right", "top", "bottom"
  },
  tray = {
    elements = { "repl" },
    size = 10,
    position = "bottom", -- Can be "left", "right", "top", "bottom"
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
})

-- mappings
vim.api.nvim_set_keymap("n", "db", [[:lua require'dap'.toggle_breakpoint()<cr>]], {})
vim.api.nvim_set_keymap("n", "dc", [[:lua require'dap'.continue()<cr>]], {})
vim.api.nvim_set_keymap("n", "do", [[:lua require'dap'.step_over()<cr>]], {})
vim.api.nvim_set_keymap("n", "di", [[:lua require'dap'.step_into()<cr>]], {})
vim.api.nvim_set_keymap("n", "dI", [[:lua require'dap'.repl.open()<cr>]], {})
vim.api.nvim_set_keymap("n", "dh", [[:lua require'dap.ui.widgets'.hover()<cr>]], {})
vim.api.nvim_set_keymap("n", "ds", [[:lua require'dap'.terminate()<cr>]], {})
vim.api.nvim_set_keymap("n", "du", [[:lua require'dapui'.toggle()<cr>]], {})
