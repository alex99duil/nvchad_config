local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },

    json = { "clang_format" },
    python = { "ruff_fix", "ruff_format" },
    cpp = { "clang_format" },
    rust = { "rustfmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
