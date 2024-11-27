-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = { "pyright", "ruff", "clangd", "rust_analyzer", "psalm", "taplo" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.pyright.setup {
  on_attach = nvlsp.on_attach,
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = false,
    },
    python = {
      pythonPath = "./.venv/bin/python",
      analysis = {
        diagnosticMode = "workspace",
        typeCheckingMode = "strict",
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { "*" },
      },
    },
  },
}

lspconfig.ruff.setup {
  on_attach = nvlsp.on_attach,
  trace = "messages",
  init_options = {
    settings = {
      logLevel = "debug",
    },
  },
}

lspconfig.rust_analyzer.setup {
  on_attach = nvlsp.on_attach,
  settings = {
    ["rust-analyzer"] = {
      cargo = { allFeatures = true },
      procMacro = { enable = true },
      checkOnSave = {
        command = "clippy",
      },
    },
  },
}

-- typescript
-- lspconfig.tsserver.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
-- }
