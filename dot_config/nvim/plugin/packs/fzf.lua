local function fzf_setup()
  vim.pack.add({
    { src = "https://github.com/ibhagwan/fzf-lua" },
  })

  local fzf = require("fzf-lua")
  fzf.setup()
  fzf.register_ui_select()

  vim.keymap.set('n', "<leader>zf", "<cmd>FzfLua files<CR>", { desc = "FzF Files" })
  vim.keymap.set('n', "<leader>zg", "<cmd>FzfLua live_grep<CR>", { desc = "FzF Grep" })
  vim.keymap.set('n', "<leader>zb", "<cmd>FzfLua buffers<CR>", { desc = "FzF Buffers" })
  vim.keymap.set('n', "<leader>zr", "<cmd>FzfLua resume<CR>", { desc = "FzF Resume" })
  vim.keymap.set('n', "<leader>zw", "<cmd>FzfLua lsp_workspace_diagnostics<CR>", { desc = "FzF Workspace Diagnostics" })
  vim.keymap.set('n', "<leader>zd", "<cmd>FzfLua lsp_document_diagnostics<CR>", { desc = "FzF Document Diagnostics" })
end

if vim.fn.executable("fzf") == 1 then
  vim.schedule(fzf_setup)
end
