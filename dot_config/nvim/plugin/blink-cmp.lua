vim.api.nvim_create_autocmd('InsertEnter', {
    once = true,
    callback = function()
        vim.pack.add({
            { src = "https://github.com/saghen/blink.cmp" },
        })

        require('blink.cmp').setup({
            keymap = { preset = 'enter' },

            appearance = {
                nerd_font_variant = 'mono'
            },

            completion = {
                documentation = {
                    auto_show = false,
                    auto_show_delay_ms = 700,
                }
            },

            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },

            fuzzy = { implementation = "lua" },
        })
    end
})
