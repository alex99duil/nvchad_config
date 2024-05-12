require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Trouble plugin
map("n", "<leader>tt", "<cmd>TroubleToggle<cr>", { desc = "Toggle diagnostics" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
