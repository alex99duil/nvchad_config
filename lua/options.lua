require "nvchad.options"

-- add yours here!
vim.g.codeium_no_map_tab = 1

local o = vim.o
o.foldlevel=20
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
-- o.nofoldenable = true
-- o.cursorlineopt ='both' -- to enable cursorline!
