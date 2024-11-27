require("lint").linters_by_ft = {
  cpp = { "clangtidy" },
  php = { --[["phpcs",--]] "phpstan" },
  -- rust = { "clippy" },
}
