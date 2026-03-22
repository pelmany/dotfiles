local opt = vim.opt

opt.mouse = "a"
opt.termguicolors = true
opt.clipboard = "unnamedplus"

opt.swapfile = false
opt.undofile = true

opt.number = true
opt.relativenumber = true

opt.signcolumn = "yes"
opt.colorcolumn = "120"
opt.virtualedit = "all"

opt.list = true
vim.opt.listchars = "tab:│ ,multispace:│   "

opt.expandtab = true
opt.smarttab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

opt.ignorecase = true
opt.smartcase = true

local hl_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ timeout = 150 })
    end,
    group = hl_group,
})
