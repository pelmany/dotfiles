local function slop_setup()
  vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/olimorris/codecompanion.nvim" },
  })
  require("codecompanion").setup({
    opts = {
      log_level = "WARN",
    },
    interactions = {
      chat = {
        opts = {
          completion_provider = "blink",
        },
      },
    },
    strategies = {
      chat = { adapter = "ollama" },
      inline = { adapter = "ollama" },
      agent = { adapter = "ollama" },
    },
    adapters = {
      ollama = function()
        return require("codecompanion.adapters").extend("ollama", {
          env = {
            url = "http://localhost:11434",
          },
          schema = {
            model = {
              default = "qwen2.5-coder:7b",
            },
            num_ctx = {
              default = 16384,
            },
          },
        })
      end,
    },
  })

  vim.keymap.set(
    { "n", "v" },
    "<leader>aa",
    "<cmd>CodeCompanionActions<cr>",
    { noremap = true, silent = true, desc = "Open AI slop Actions" }
  )
  vim.keymap.set(
    { "n", "v" },
    "<leader>ai",
    "<cmd>CodeCompanionChat Toggle<cr>",
    { noremap = true, silent = true, desc = "Toggle AI slop Chat" }
  )
  vim.keymap.set(
    "v",
    "ad",
    "<cmd>CodeCompanionChat Add<cr>",
    { noremap = true, silent = true, desc = "Add to AI slop Chat" }
  )
end

-- vim.schedule(slop_setup)
