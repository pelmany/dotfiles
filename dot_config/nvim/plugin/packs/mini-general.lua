local function mini_general_setup()
  vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.clue" },
    { src = "https://github.com/nvim-mini/mini.diff" },
    { src = "https://github.com/nvim-mini/mini-git" },
  })

  local mini_clue = require("mini.clue")
  mini_clue.setup({
    triggers = {
      -- Leader triggers
      { mode = { "n", "x" }, keys = "<Leader>" },
      -- `[` and `]` keys
      { mode = "n", keys = "[" },
      { mode = "n", keys = "]" },
      -- Built-in completion
      { mode = "i", keys = "<C-x>" },
      -- `g` key
      { mode = { "n", "x" }, keys = "g" },
      -- Marks
      { mode = { "n", "x" }, keys = "'" },
      { mode = { "n", "x" }, keys = "`" },
      -- Registers
      { mode = { "n", "x" }, keys = '"' },
      { mode = { "i", "c" }, keys = "<C-r>" },
      -- Window commands
      { mode = "n", keys = "<C-w>" },
      -- `z` key
      { mode = { "n", "x" }, keys = "z" },
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

  require("mini.diff")
  require("mini.git")
end

mini_general_setup()
