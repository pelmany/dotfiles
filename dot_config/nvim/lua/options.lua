local opt = vim.opt

opt.mouse = "a"
opt.termguicolors = true
opt.clipboard = "unnamedplus"

opt.swapfile = false
opt.undofile = true

opt.number = true
opt.relativenumber = true

opt.signcolumn = "yes"
opt.colorcolumn = ""

opt.cursorline = true

opt.list = true
opt.listchars:append({
  trail = "·",
})

opt.expandtab = true
opt.smarttab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2

opt.ignorecase = true
opt.smartcase = true

opt.shortmess:append("c")

-- opt.autocomplete = true
opt.complete = 'o,.,w,b,u'
opt.completeopt = {
  "fuzzy",
  "nosort",
  "menu",
  "menuone",
  "noselect",
}
-- opt.wildoptions = "pum"
-- opt.wildmode = "noselect:lastused,full"
opt.pummaxwidth = 20
opt.pumheight = 5

opt.guifont = "JetBrainsMono Nerd Font:h12"
opt.langmap =
"ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
