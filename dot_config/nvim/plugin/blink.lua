local function get_mini_icon(ctx)
    if ctx.source_name == "Path" then
        local is_unknown_type = vim.tbl_contains(
            { "link", "socket", "fifo", "char", "block", "unknown" },
            ctx.item.data.type
        )
        local mini_icon, mini_hl, _ = require("mini.icons").get(
            is_unknown_type and "os" or ctx.item.data.type,
            is_unknown_type and "" or ctx.label
        )
        if mini_icon then
            return mini_icon, mini_hl
        end
    end
    local mini_icon, mini_hl, _ = require("mini.icons").get("lsp", ctx.kind)
    return mini_icon, mini_hl
end

local function blink_setup()
    vim.pack.add({
        { src = "https://github.com/saghen/blink.cmp" },
        { src = "https://github.com/nvim-mini/mini.nvim" },
    })

    require('blink.cmp').setup({
        keymap = { preset = 'enter' },
        cmdline = {
            keymap = { preset = 'super-tab' },
            completion = { menu = { auto_show = true } },
        },
        appearance = {
            nerd_font_variant = 'mono'
        },
        completion = {
            documentation = {
                auto_show = false,
                auto_show_delay_ms = 700,
            },
            menu = {
                draw = {
                    components = {
                        kind_icon = {
                            text = function(ctx)
                                local kind_icon, _ = get_mini_icon(ctx)
                                return kind_icon
                            end,
                            -- (optional) use highlights from mini.icons
                            highlight = function(ctx)
                                local _, hl = get_mini_icon(ctx)
                                return hl
                            end,
                        },
                        kind = {
                            -- (optional) use highlights from mini.icons
                            highlight = function(ctx)
                                local _, hl = get_mini_icon(ctx)
                                return hl
                            end,
                        }
                    }
                }
            },
        },
        snippets = { preset = 'mini_snippets' },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
        fuzzy = { implementation = "lua" },
    })
end

vim.api.nvim_create_autocmd({ 'InsertEnter', "CmdlineEnter" }, {
    once = true,
    callback = blink_setup
})
