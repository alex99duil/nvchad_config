local servers = {
  --[["pyright",--]] --[["pyrefly",--]] "basedpyright", "ruff", --Python lsp, linter/formatter
  "clangd",                                                     -- C++
  "rust_analyzer", "taplo",                                     -- Rust lsp, toml lsp
  "psalm",                                                      -- php
  "biome", "tsgo",                                             -- typescript/javascript linter/formatter, lsp -ts_ls
  "omnisharp"                                                   -- C# lsp
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end

vim.lsp.config("basedpyright", {
  -- on_attach = nvlsp.on_attach,
  settings = {
    basedpyright = {
      analysis = {
        -- diagnosticMode = "workspace",
        typeCheckingMode = "basic",
      },
    },
  },
})
-- vim.lsp.config("pyright", {
--   -- on_attach = nvlsp.on_attach,
--   settings = {
--     pyright = {
--       -- Using Ruff's import organizer
--       disableOrganizeImports = true,
--     },
--     python = {
--       pythonPath = "./.venv/bin/python",
--       analysis = {
--         diagnosticMode = "workspace",
--         typeCheckingMode = "strict",
--         -- Ignore all files for analysis to exclusively use Ruff for linting
--         ignore = { "*" },
--       },
--     },
--   },
-- })

vim.lsp.config("ruff", {
  -- on_attach = nvlsp.on_attach,
  trace = "messages",
  init_options = {
    settings = {
      logLevel = "debug",
    },
  },
})

vim.lsp.config("rust_analyzer", {
  -- on_attach = nvlsp.on_attach,
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      check = { command = "clippy", }
    },
  },
})

vim.lsp.enable(servers)
