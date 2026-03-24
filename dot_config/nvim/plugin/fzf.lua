local function fzf_setup()
    vim.pack.add({
        { src = "https://github.com/ibhagwan/fzf-lua" },
    })

    require("fzf-lua").setup()

    -- keymap
    vim.keymap.set('n', "<leader>zf", ":FzfLua files<CR>", { desc = "FzF files" })
    vim.keymap.set('n', "<leader>zg", ":FzfLua live_grep<CR>", { desc = "FzF grep" })
    vim.keymap.set('n', "<leader>zb", ":FzfLua buffers<CR>", { desc = "FzF buffers" })
    vim.keymap.set('n', "<leader>zr", ":FzfLua resume<CR>", { desc = "FzF resume" })
end

vim.schedule(function()
    fzf_setup()
end)
