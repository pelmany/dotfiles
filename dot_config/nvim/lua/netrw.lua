local netrw = vim.g

-- netrw.netrw_banner = 0
netrw.netrw_liststyle = 3
netrw.netrw_browse_split = 0
netrw.netrw_winsize = 15
netrw.netrw_keepdir = 0

vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.opt_local.colorcolumn = ""
        vim.opt_local.signcolumn = "no"
    end,
})
