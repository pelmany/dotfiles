local function mini_setup()
    vim.pack.add({
        { src = "https://github.com/nvim-mini/mini.nvim" },
    })

    require("mini.ai").setup()
    require("mini.git").setup()
    require("mini.pick").setup()
    require("mini.pairs").setup()
    require("mini.icons").setup({
        style = 'glyph'
    })
    require("mini.comment").setup()
    require("mini.surround").setup()
    require("mini.cursorword").setup()
    require("mini.tabline").setup()
    require("mini.statusline").setup()
    require("mini.notify").setup({
        lsp_progress = {
            enable = false,
            level = 'WARN',
            duration_last = 1000,
        },
    })
    local mini_snippets = require('mini.snippets')
    mini_snippets.setup({
        snippets = {
            mini_snippets.gen_loader.from_file(vim.fn.stdpath('config') .. 'snippets/global.json'),
            mini_snippets.gen_loader.from_lang(),
        },
    })
    local mini_indentscope = require("mini.indentscope")
    mini_indentscope.setup({
        draw = {
            delay = 0,
            animation = mini_indentscope.gen_animation.none()
        },
    })
    local mini_hipatterns = require('mini.hipatterns')
    mini_hipatterns.setup({
        highlighters = {
            -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
            fixme     = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
            hack      = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
            todo      = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
            note      = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },

            -- Highlight hex color strings (`#rrggbb`) using that color
            hex_color = mini_hipatterns.gen_highlighter.hex_color(),
        },
    })
    local mini_clue = require('mini.clue')
    mini_clue.setup({
        triggers = {
            -- Leader triggers
            { mode = { 'n', 'x' }, keys = '<Leader>' },

            -- `[` and `]` keys
            { mode = 'n',          keys = '[' },
            { mode = 'n',          keys = ']' },
            -- Built-in completion
            { mode = 'i',          keys = '<C-x>' },
            -- `g` key
            { mode = { 'n', 'x' }, keys = 'g' },
            -- Marks
            { mode = { 'n', 'x' }, keys = "'" },
            { mode = { 'n', 'x' }, keys = '`' },
            -- Registers
            { mode = { 'n', 'x' }, keys = '"' },
            { mode = { 'i', 'c' }, keys = '<C-r>' },
            -- Window commands
            { mode = 'n',          keys = '<C-w>' },
            -- `z` key
            { mode = { 'n', 'x' }, keys = 'z' },
        },
        clues = {
            mini_clue.gen_clues.square_brackets(),
            mini_clue.gen_clues.builtin_completion(),
            mini_clue.gen_clues.g(),
            mini_clue.gen_clues.marks(),
            mini_clue.gen_clues.registers(),
            mini_clue.gen_clues.windows(),
            mini_clue.gen_clues.z(),
        },
        window = {
            delay = 700,
        },
    })
end

mini_setup()
