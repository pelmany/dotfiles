vim.schedule(function()
  vim.pack.add({
    { src = "https://github.com/folke/trouble.nvim" },
  })
  require("trouble").setup()
end)
