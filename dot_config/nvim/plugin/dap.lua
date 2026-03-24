local function dap_setup()
    vim.pack.add({
        { src = "https://codeberg.org/mfussenegger/nvim-dap" },
        { src = "https://codeberg.org/mfussenegger/nvim-dap-python" },
        { src = "https://github.com/igorlfs/nvim-dap-view" },
    })

    local dap = require("dap")
    require("dap-view").setup()

    -- adapters
    dap.adapters.lldb = {
        type = 'executable',
        command = 'lldb-dap',
        name = 'lldb'
    }
    require("dap-python").setup("python3")

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

    -- keymap
    vim.keymap.set('n', "<leader>bc", ":DapContinue<CR>", { desc = "DAP continue" })
    vim.keymap.set('n', "<leader>bp", ":DapPause<CR>", { desc = "DAP pause" })
    vim.keymap.set('n', "<leader>bq", ":DapTerminate<CR>", { desc = "DAP terminate" })
    -- set('n', "<leader>br", ":DapToggleRepl<CR>", { desc = "DAP repl" })
    vim.keymap.set('n', "<leader>bv", ":DapViewToggle<CR>", { desc = "DAP View toggle" })
    vim.keymap.set('n', "<leader>bl", ":DapShowLog<CR>", { desc = "DAP log" })
    vim.keymap.set('n', "<leader>bb", ":DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint (DAP)" })
    vim.keymap.set('n', "<leader>bo", ":DapStepOver<CR>", { desc = "Step over (DAP)" })
    vim.keymap.set('n', "<leader>bi", ":DapStepInto<CR>", { desc = "Step into (DAP)" })
    vim.keymap.set('n', "<leader>bu", ":DapStepOut<CR>", { desc = "Step out (DAP)" })
end

vim.schedule(function()
    dap_setup()
end)
