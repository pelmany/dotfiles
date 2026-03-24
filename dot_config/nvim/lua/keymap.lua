vim.g.mapleader = " "
local set = vim.keymap.set

-- Vim pack mappings
set('n', '<leader>!u', vim.pack.update, { desc = "NVIM pack update" })

-- LSP mappings
set('n', "<leader>f", vim.lsp.buf.format, { desc = "LSP code formatter" })
set('n', '<leader>r', vim.lsp.buf.rename, { desc = "LSP rename" })
set('n', '<leader>gd', vim.lsp.buf.definition, { desc = "LSP go to Definition" })
set('n', '<leader>gd', vim.lsp.buf.declaration, { desc = "LSP go to declaration" })
set('n', '<leader>gd', vim.lsp.buf.implementation, { desc = "LSP go to implementation" })
set('n', '<leader>K', vim.lsp.buf.hover, { desc = "Hover Docs" })
set('n', '<leader>cc', vim.lsp.codelens.run, { desc = "LSP codelens" })

-- Tabs mappings
set('n', "<leader>tt", ":tabnew<CR>", { desc = "Create new tab" })
set('n', "<leader>tq", ":tabclose<CR>", { desc = "Close current tab" })
set('n', "<leader>tQ", ":tabonly<CR>", { desc = "Leave only current tab" })

-- Split windows mappings
set('n', "<leader>sv", ":vertical split<CR>", { desc = "Vertical split" })
set('n', "<leader>sh", ":horizontal split<CR>", { desc = "Horizontal split" })
set('n', "<leader>st", ":botright split | resize 10 | terminal<CR>", { desc = "Open splitted term" })
