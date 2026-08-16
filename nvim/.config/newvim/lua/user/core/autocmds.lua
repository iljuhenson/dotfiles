vim.api.nvim_create_autocmd("FileType", {
	pattern = "harpoon",
	callback = function()
		vim.opt_local.number = true
		vim.opt_local.relativenumber = false
		vim.opt_local.signcolumn = "no"
		vim.opt_local.cursorline = true
		vim.opt_local.wrap = false
	end,
})
