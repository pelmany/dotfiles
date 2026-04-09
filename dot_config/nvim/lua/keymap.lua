vim.g.mapleader = " "
local set = vim.keymap.set

-- Core
set("n", "<leader>!R", "<cmd>source<CR>", { desc = "Config reload" })
set("n", "<leader>!H", "<cmd>checkhealth<CR>", { desc = "Check health" })
set("n", "<leader>!U", vim.pack.update, { desc = "Vim pack update" })

-- Basic
set('n', '<Leader>nh', ':nohl<CR>', { desc = "Clear highlight" })

-- LSP
set("n", "<leader>lf", vim.lsp.buf.format, { desc = "LSP Code Formatter" })
set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "LSP Rename" })
set("n", "<leader>K", vim.lsp.buf.hover, { desc = "LSP Hover Docs" })
set("n", "<leader>lc", vim.lsp.codelens.run, { desc = "LSP Codelens" })
set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go to Definition" })
set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP Go to Declaration" })
set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP Go to Implementation" })
set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic Quickfix list' })

-- Buffer
set('n', '<C-h>', '<C-w>h', { desc = "h buffer" })
set('n', '<C-j>', '<C-w>j', { desc = "j buffer" })
set('n', '<C-k>', '<C-w>k', { desc = "k buffer" })
set('n', '<C-l>', '<C-w>l', { desc = "l buffer" })
set("n", "<leader>q", "<cmd>confirm bd<CR>", { desc = "Close Buffer" })

-- Tabs
set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "Create new Tab" })
set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close current Tab" })
set("n", "<leader>to", "<cmd>tabonly<CR>", { desc = "Leave only current Tab" })

-- Split
set("n", "<leader>sv", "<cmd>vertical split<CR>", { desc = "Vertical Split" })
set("n", "<leader>sh", "<cmd>horizontal split<CR>", { desc = "Horizontal Split" })
set("n", "<leader>st", "<cmd>botright split | resize 12 | lcd %:p:h | terminal<CR>", { desc = "Open Splitted Term" })

-- Term
set("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit Term" })
