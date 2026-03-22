vim.schedule(function()
  vim.pack.add({
    { src = "https://codeberg.org/mfussenegger/nvim-dap" },
  })

  local dap = require("dap")
  dap.adapters.lldb = {
    type = 'executable',
    command = 'lldb-dap',
    name = 'lldb'
  }
  dap.adapters.python = function(cb, config)
    if config.request == 'attach' then
      ---@diagnostic disable-next-line: undefined-field
      local port = (config.connect or config).port
      ---@diagnostic disable-next-line: undefined-field
      local host = (config.connect or config).host or '127.0.0.1'
      cb({
        type = 'server',
        port = assert(port, '`connect.port` is required for a python `attach` configuration'),
        host = host,
        options = {
          source_filetype = 'python',
        },
      })
    else
      cb({
        type = 'executable',
        command = os.getenv("VIRTUAL_ENV") .. "/bin/python",
        args = { '-m', 'debugpy.adapter' },
        options = {
          source_filetype = 'python',
        },
      })
    end
  end

  dap.configurations.cpp = {
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
  dap.configurations.python = {
    {
      type = 'python',
      request = 'launch',
      name = "Launch file",

      program = "${file}",
      pythonPath = function()
        local venv = os.getenv("VIRTUAL_ENV") .. "/bin/python"
        if vim.fn.executable(venv) == 1 then
          return venv
        else
          return '/usr/bin/python'
        end
      end,
    },
  }
end)
