local lint = require "lint"

lint.linters_by_ft = {
  cpp = { "clangtidy" },
  php = { --[["phpcs",--]] "phpstan" },
  rust = { "clippy" },
  -- python = { "ruff" },
  -- typescript = { "eslint" },
  -- javascript = { "eslint" },
  -- typescript = { "biomejs" },
  -- javascript = { "biomejs" },
}

-- Run linters on save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype
    lint.try_lint()
  end,
})

