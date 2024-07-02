require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-S-j>", ":m +1<CR>")
map("n", "<C-S-k>", ":m -2<CR>")

map("t", "<ESC>", "<C-\\><C-N>")
map("t", "<C-k>", "<C-\\><C-N>")

-- Codeium
map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })

map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "Show hover" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Show signature help" })
map("n", "<space>wa", vim.lsp.buf.add_workspace_folder)
map("n", "<space>wr", vim.lsp.buf.remove_workspace_folder)
map("n", "<space>wl", function()
  print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, {desc = "List workspace folders"})
map("n", "<space>D", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
map("n", "<space>rn", vim.lsp.buf.rename, { desc = "Rename variable" })
map("n", "gr", vim.lsp.buf.references, { desc = "Show references" })
map("n", "<space>gf", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
map("n", "<space>q", vim.diagnostic.setloclist, { desc = "Set diagnostics list" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
