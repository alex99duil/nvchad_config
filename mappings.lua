---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- NvimTree
    ["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" },

    -- Quit
    ["<leader>q"] = { "<cmd>q<cr>", "Quit" },
    ["<leader>Q"] = { "<cmd>qa!<cr>", "Quit all" },
  },

  t = {
    ["<ESC>"] = { vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "Escape terminal mode" },
  },


  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
