local function oil_setup()
    vim.pack.add({
        { src = "https://github.com/stevearc/oil.nvim" }
    })

    require("oil").setup({
        default_file_explorer = true,
        columns = {
            "permissions",
            "icon",
            -- "size",
            -- "mtime",
        },
        buf_options = {
            buflisted = false,
            bufhidden = "hide",
        },
        win_options = {
            wrap = false,
            signcolumn = "no",
            cursorcolumn = false,
            foldcolumn = "0",
            spell = false,
            list = false,
            conceallevel = 3,
            concealcursor = "nvic",
        },
        delete_to_trash = true,
        view_options = {
            show_hidden = true,
            natural_order = "fast",
            case_insensitive = false,
            sort = {
                { "type", "asc" },
                { "name", "asc" },
            },
        },
    })

    -- keymap
    vim.keymap.set('n', "<leader>e", ":Oil<CR>", { desc = "Open Oil" })
end

oil_setup()
