local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    json = { "clang_format" },
    c = { "clang_format" },
    cpp = { "clang_format" },

    rust = { "rustfmt" },
    python = {
      -- To fix auto-fixable lint errors.
      "ruff_fix",
      -- To run the Ruff formatter.
      "ruff_format",
      -- To organize the imports.
      "ruff_organize_imports",
    },

    -- typescript = { "prettier", "ast-grep" },
    -- javascript = { "prettier", "ast-grep" },
    typescript = { "biome" },
    javascript = { "biome" },
    css = { "biome" },
    html = { "biome" },
    php = { "php_cs_fixer" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
