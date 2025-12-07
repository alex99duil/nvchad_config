require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-S-j>", ":m +1<CR>")
map("n", "<C-S-k>", ":m -2<CR>")

map("t", "<ESC>", "<C-\\><C-N>")
map("t", "<C-k>", "<C-\\><C-N>")

-- Quit from nvim
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Quit all" })

-- Codeium
map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })

map("n", "<leader>l",
  function()
    local bufnr = vim.api.nvim_get_current_buf()
    if vim.lsp.inlay_hint.is_enabled() then
      vim.lsp.inlay_hint.enable(false, { bufnr })
    else
      vim.lsp.inlay_hint
          .enable(true, { bufnr })
    end
  end, { desc = "Toggle Inlay Hints" })

map("n", "ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
