local function dap_setup()
  vim.pack.add({
    { src = "https://codeberg.org/mfussenegger/nvim-dap" },
    { src = "https://codeberg.org/mfussenegger/nvim-dap-python" },
    { src = "https://github.com/igorlfs/nvim-dap-view" },
  })

  local dap = require("dap")

  -- adapters
  require("dap-python").setup("python3")

  dap.adapters.lldb = {
    type = 'executable',
    command = 'lldb-dap',
    name = 'lldb'
  }

  -- configurations
  dap.configurations.c = {
    {
      name = 'Launch',
      type = 'lldb',
      request = 'launch',
      program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      end,
      cwd = '${workspaceFolder}',
      stopOnEntry = false,
      args = {},
    },
  }
  dap.configurations.cpp = dap.configurations.c
  dap.configurations.rust = dap.configurations.c
  for _, group in pairs({
    "DapBreakpoint",
    "DapBreakpointCondition",
    "DapBreakpointRejected",
    "DapLogPoint",
  }) do
    vim.fn.sign_define(group, { text = "●", texthl = group })
  end
  vim.fn.sign_define("DapStopped", { text = "≫", texthl = "DapStopped", linehl = "debugPC", numhl = "debugPC" })


  local dap_view = require("dap-view")
  dap_view.setup()

  vim.keymap.set('n', "<leader>br", dap.continue, { desc = "DAP run/continue" })
  vim.keymap.set('n', "<leader>bp", dap.pause, { desc = "DAP pause" })
  vim.keymap.set('n', "<leader>bq", dap.terminate, { desc = "DAP terminate" })
  vim.keymap.set('n', "<leader>bR", dap.repl.open, { desc = "DAP repl" })
  vim.keymap.set('n', "<leader>bv", dap_view.toggle, { desc = "DAP View toggle" })
  vim.keymap.set('n', "<leader>bb", dap.toggle_breakpoint, { desc = "Toggle breakpoint (DAP)" })
  vim.keymap.set('n', "<leader>bo", dap.step_over, { desc = "Step over (DAP)" })
  vim.keymap.set('n', "<leader>bi", dap.step_into, { desc = "Step into (DAP)" })
  vim.keymap.set('n', "<leader>bu", dap.step_out, { desc = "Step out (DAP)" })
  vim.keymap.set('n', "<leader>bc", dap.run_to_cursor, { desc = "Run to cursor (DAP)" })
end

vim.schedule(dap_setup)
