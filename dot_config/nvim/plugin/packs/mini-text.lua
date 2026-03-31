local function mini_text_setup()
  vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.pairs" },
    { src = "https://github.com/nvim-mini/mini.surround" },
    { src = "https://github.com/nvim-mini/mini.operators" },
  })

  require("mini.pairs").setup()
  require("mini.surround").setup()
  require("mini.operators").setup()
end

mini_text_setup()
