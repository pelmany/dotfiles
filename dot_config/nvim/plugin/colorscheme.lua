vim.pack.add({
  { src = "https://github.com/ellisonleao/gruvbox.nvim" },
})

require("gruvbox").setup({
  italic = {
    strings = false,
    emphasis = false,
    comments = true,
    operators = false,
    folds = true,
  },
  transparent_mode = false,
  overrides = {
    SignColumn = { bg = "NONE" },
  },
})

local scheme = "gruvbox"
vim.cmd("colorscheme " .. scheme)
