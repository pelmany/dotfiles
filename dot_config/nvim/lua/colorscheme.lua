vim.pack.add({
    {src = "https://github.com/ellisonleao/gruvbox.nvim"}
})

local scheme = "gruvbox"

require(scheme).setup()
vim.cmd("colorscheme " .. scheme)
