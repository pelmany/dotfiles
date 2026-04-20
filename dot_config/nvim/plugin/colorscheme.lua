vim.pack.add({
  -- { src = "https://github.com/ellisonleao/gruvbox.nvim" },
  { src = "https://github.com/catppuccin/nvim", name = "catppuccin" }
})

-- require("gruvbox").setup({
--   italic = {
--     strings = false,
--     emphasis = false,
--     comments = true,
--     operators = false,
--     folds = true,
--   },
--   transparent_mode = false,
--   overrides = {
--     SignColumn = { bg = "NONE" },
--   },
-- })
--
require("catppuccin").setup({
  flavour = "macchiato"
})
vim.cmd.colorscheme "catppuccin-nvim"
