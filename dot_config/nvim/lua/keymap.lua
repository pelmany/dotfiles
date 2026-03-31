vim.g.mapleader = " "
local set = vim.keymap.set

-- NVIM core mappings
set("n", "<leader>!R", "<cmd>source<CR>", { desc = "NVIM config reload" })
set("n", "<leader>!H", "<cmd>checkhealth<CR>", { desc = "NVIM check health" })
set("n", "<leader>!U", vim.pack.update, { desc = "NVIM pack update" })

-- LSP mappings
set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Code Formatter (LSP)" })
set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename (LSP)" })
set("n", "<leader>K", vim.lsp.buf.hover, { desc = "Hover Docs (LSP)" })
set("n", "<leader>lc", vim.lsp.codelens.run, { desc = "Codelens (LSP)" })
set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition (LSP)" })
set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration (LSP)" })
set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to Implementation (LSP)" })

-- Buffer mappings
set("n", "<leader>q", "<cmd>confirm bd<CR>", { desc = "Close Buffer" })

-- Tabs mappings
set("n", "<leader>tt", "<cmd>tabnew<CR>", { desc = "Create new Tab" })
set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close current Tab" })
set("n", "<leader>to", "<cmd>tabonly<CR>", { desc = "Leave only current Tab" })

-- Split windows mappings
set("n", "<leader>sv", "<cmd>vertical split<CR>", { desc = "Vertical Split" })
set("n", "<leader>sh", "<cmd>horizontal split<CR>", { desc = "Horizontal Split" })
set("n", "<leader>st", "<cmd>botright split | resize 10 | terminal<CR>", { desc = "Open Splitted Term" })

-- Term mappings
set("t", "<esc>", [[<C-\><C-n>]], { desc = "Exit Term" })
