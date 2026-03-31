local function render_md_setup()
  vim.pack.add({
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/MeanderingProgrammer/render-markdown.nvim",
  })

  require("render-markdown").setup({
    file_types = { "markdown", "codecompanion" },
  })

  vim.keymap.set("n", "<leader>mr", "<cmd>RenderMarkdown toggle<CR>", { desc = "Toggle markdown render" })
end

vim.schedule(render_md_setup)
