require("lint").linters_by_ft = {
	python = { "ruff" },
	cpp = { "clangtidy" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
