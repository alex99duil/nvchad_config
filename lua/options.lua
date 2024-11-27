require "nvchad.options"

vim.g.codeium_no_map_tab = 1

local o = vim.o
o.scrolloff = 5
o.foldlevel=20
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
-- o.nofoldenable = true
-- o.cursorlineopt ='both' -- to enable cursorline!
