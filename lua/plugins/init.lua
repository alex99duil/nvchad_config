return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- "vim", "vimdoc",
        -- "html", "css",
        "lua",
        "python",
        "rust",

        "php",
        "typescript",
        "javascript",
        "c",
        "cpp",

        "ron",
        "toml",
        "yaml",
        "json"
      },
    },
  },

  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    opts = {},
    config = function()
      require("configs.linters")
    end
  },

  {
    "folke/trouble.nvim",
    opts = {}, -- for default options
    cmd = { "Trouble", "TroubleToggle" },
    keys = {
      {
        "<leader>tr",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>tR",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>tL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>tQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },

  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },

  {
    "saecki/crates.nvim",
    opts = {},
    event = { "BufRead Cargo.toml" },
    tag = "stable",
    config = function()
      require("crates").setup()
    end,
  },
}
