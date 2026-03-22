vim.g.mapleader = " "
local set = vim.keymap.set

set('n', '<leader>!u', vim.pack.update, { desc = "NVIM pack update" })

set('n', "<leader>f", vim.lsp.buf.format, { desc = "LSP code formatter" })
set('n', '<leader>r', vim.lsp.buf.rename, { desc = "LSP rename" })

set('n', "<leader>e", ":Explore<CR>", { desc = "Create new tab" })

set('n', "<leader>tt", ":tabnew<CR>", { desc = "Create new tab" })
set('n', "<leader>tq", ":tabclose<CR>", { desc = "Close current tab" })
set('n', "<leader>tQ", ":tabonly<CR>", { desc = "Leave only current tab" })

set('n', "<leader>ot", ":botright split | resize 10 | terminal<CR>", { desc = "Open term" })
set('n', "<leader>oe", ":Lexplore<CR>", { desc = "Open lexplore" })

set('n', "<leader>zf", ":FzfLua files<CR>", { desc = "FzF files" })
set('n', "<leader>zg", ":FzfLua live_grep<CR>", { desc = "FzF grep" })
set('n', "<leader>zb", ":FzfLua buffers<CR>", { desc = "FzF buffers" })
set('n', "<leader>zr", ":FzfLua resume<CR>", { desc = "FzF resume" })

set('n', "<leader>xx", ":Trouble diagnostics toggle<CR>", { desc = "Diagnostics (Trouble)" })
set('n', "<leader>xX", ":Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Buffer diagnostics (Trouble)" })
set('n', "<leader>cr", ":Trouble symbols toggle<CR>", { desc = "Symbols (Trouble)" })
set('n', "<leader>cl", ":Trouble lsp toggle focus=false win.position=right<CR>", { desc = "LSP (Trouble)" })
set('n', "<leader>xL", ":Trouble loclist toggle<CR>", { desc = "Location list (Trouble)" })
set('n', "<leader>xQ", ":Trouble qflist toggle<CR>", { desc = "Quickfix list (Trouble)" })

set('n', "<leader>bc", ":DapContinue<CR>", { desc = "DAP continue" })
set('n', "<leader>bp", ":DapPause<CR>", { desc = "DAP pause" })
set('n', "<leader>bq", ":DapTerminate<CR>", { desc = "DAP terminate" })
set('n', "<leader>br", ":DapToggleRepl<CR>", { desc = "DAP repl" })
set('n', "<leader>bl", ":DapShowLog<CR>", { desc = "DAP log" })
set('n', "<leader>bb", ":DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint (DAP)" })
set('n', "<leader>bo", ":DapStepOver<CR>", { desc = "Step over (DAP)" })
set('n', "<leader>bi", ":DapStepInto<CR>", { desc = "Step into (DAP)" })
set('n', "<leader>bu", ":DapStepOut<CR>", { desc = "Step out (DAP)" })
set('n', "<leader>bv", ":DapViewToggle<CR>", { desc = "DAP View toggle" })
