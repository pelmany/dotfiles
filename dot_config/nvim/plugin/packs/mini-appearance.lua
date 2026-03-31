local function mini_appearance_setup()
  vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.hipatterns" },
    { src = "https://github.com/nvim-mini/mini.icons" },
    { src = "https://github.com/nvim-mini/mini.indentscope" },
    { src = "https://github.com/nvim-mini/mini.notify" },
    { src = "https://github.com/nvim-mini/mini.statusline" },
    { src = "https://github.com/nvim-mini/mini.tabline" },
  })

  local mini_hipatterns = require("mini.hipatterns")
  mini_hipatterns.setup({
    highlighters = {
      -- 'FIXME', 'HACK', 'TODO', 'NOTE'
      fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
      hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
      todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
      note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
      hex_color = mini_hipatterns.gen_highlighter.hex_color(),
    },
  })

  local mini_icons = require("mini.icons")
  mini_icons.setup()

  local mini_indentscope = require("mini.indentscope")
  mini_indentscope.setup({
    draw = {
      delay = 0,
      animation = mini_indentscope.gen_animation.none(),
    },
    symbol = "│",
  })

  require("mini.notify").setup({
    lsp_progress = {
      enable = false,
    },
  })

  require("mini.statusline").setup()
  require("mini.tabline").setup()
end

mini_appearance_setup()
