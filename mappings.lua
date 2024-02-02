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

    -- Trouble plugin
    ["<leader>t"] = { "<CMD>TroubleToggle<CR>", "Toggle diagnostics" },
    -- ["<leader>td"] = { "<CMD>TodoTrouble keywords=TODO,FIX,FIXME,BUG,TEST,NOTE<CR>", "Todo/Fix/Fixme" },

    -- General
    ["<leader>w"] = { "<cmd>w<cr>", "Write"},
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
