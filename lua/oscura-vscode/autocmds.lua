vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "oscura-vscode",
	callback = function()
		-- Sidebar background
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
		vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#000000" })
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#000000" })
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#000000" })
		vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#323232", bg = "#000000" })

		-- Sidebar text colors (VS Code style)
		vim.api.nvim_set_hl(0, "Directory", { fg = "#4EC9B0" }) -- teal folder names
		vim.api.nvim_set_hl(0, "Title", { fg = "#4EC9B0" }) -- headers
		vim.api.nvim_set_hl(0, "Function", { fg = "#DCDCAA" }) -- yellow functions
	end,
})
