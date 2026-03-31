local function treesitter_setup()
  vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects", version = "main" },
  })

  local treesitter = require("nvim-treesitter")
  treesitter.setup({
    install_dir = vim.fn.stdpath("data") .. "/site",
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
          ["aa"] = "@parameter.outer",
          ["ia"] = "@parameter.inner",
        },
      },
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]m"] = "@function.outer",
          ["]]"] = "@class.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[["] = "@class.outer",
        },
      },
    },
  })
  treesitter.install({
    "c",
    "cpp",
    "rust",
    "sql",
    "lua",
    "bash",
    "python",
    "javascript",
    "xml",
    "kdl",
    "toml",
    "yaml",
    "json",
    "css",
    "html",
    "latex",
    "markdown",
    "markdown_inline",
  })

  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "<filetype>" },
    callback = function()
      vim.treesitter.start()
    end,
  })

  vim.api.nvim_create_autocmd("PackChanged", {
    callback = function(ev)
      local name, kind = ev.data.spec.name, ev.data.kind
      if name == "nvim-treesitter" and kind == "update" then
        if not ev.data.active then
          vim.cmd.packadd("nvim-treesitter")
        end
        vim.cmd("TSUpdate")
      end
    end,
  })
end

treesitter_setup()
