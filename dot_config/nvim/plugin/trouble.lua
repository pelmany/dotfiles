vim.schedule(function()
    vim.pack.add({
        { src = "https://github.com/folke/trouble.nvim" },
    })

    require("trouble").setup()

    -- keymap
    vim.keymap.set('n', "<leader>xx", ":Trouble diagnostics toggle<CR>", { desc = "Diagnostics (Trouble)" })
    vim.keymap.set('n', "<leader>xX", ":Trouble diagnostics toggle filter.buf=0<CR>",
        { desc = "Buffer diagnostics (Trouble)" })
    vim.keymap.set('n', "<leader>cr", ":Trouble symbols toggle<CR>", { desc = "Symbols (Trouble)" })
    vim.keymap.set('n', "<leader>cl", ":Trouble lsp toggle focus=false win.position=right<CR>",
        { desc = "LSP (Trouble)" })
    vim.keymap.set('n', "<leader>xL", ":Trouble loclist toggle<CR>", { desc = "Location list (Trouble)" })
    vim.keymap.set('n', "<leader>xQ", ":Trouble qflist toggle<CR>", { desc = "Quickfix list (Trouble)" })
end)
