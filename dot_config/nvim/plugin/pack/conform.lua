local function conform_setup()
  vim.pack.add({
    { src = "https://github.com/stevearc/conform.nvim" },
  })

  local conform = require("conform")
  conform.setup({
    default_format_opts = {
      lsp_format = "fallback",
    },
    formatters_by_ft = {
      javascript = { "prettierd", "prettier", stop_after_first = true },
      json = { "prettierd", "prettier", stop_after_first = true },
      jsonc = { "prettierd", "prettier", stop_after_first = true },
      html = { "prettierd", "prettier", stop_after_first = true },
      css = { "prettierd", "prettier", stop_after_first = true },
      yaml = { "prettierd", "prettier", stop_after_first = true },
      markdown = { "prettierd", "prettier", stop_after_first = true },
    },
  })
  vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

  vim.keymap.set("n", "<leader>f", conform.format, { desc = "Format code" })
end

vim.schedule(conform_setup)
