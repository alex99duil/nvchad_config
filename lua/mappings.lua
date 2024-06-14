require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-j>", ":m +1<CR>")
map("n", "<C-k>", ":m -2<CR>")

-- Codeium
map("i", "<C-g>", function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
