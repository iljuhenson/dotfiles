vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.signcolumn = "yes"
vim.opt.numberwidth = 1
vim.opt.cursorline = true
vim.opt.scrolloff = 999

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.o.winborder = "rounded"

vim.g.clipboard = {
	name = 'OSC 52',
	copy = {
		['+'] = require('vim.ui.clipboard.osc52').copy('+'),
		['*'] = require('vim.ui.clipboard.osc52').copy('*'),
	},
	paste = {
		['+'] = function() end,
		['*'] = function() end,
	},
}
