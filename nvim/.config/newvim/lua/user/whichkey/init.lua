local wk = require("which-key")
local nvim_tree_api = require("nvim-tree.api")


wk.add({
	-- debugging shortcuts
	{ "<leader>d",  group = "Debugger" },

	-- find files shortcuts
	{ "<leader>f",  group = "Find" },

	-- tabs shortcuts
	{ "<leader>a",  group = "Tabs" },
	{ "<leader>aa", desc = "Add buffer to tab list" },

	{ "<leader>1",  hidden = true },
	{ "<leader>2",  hidden = true },
	{ "<leader>3",  hidden = true },
	{ "<leader>4",  hidden = true },
	{ "<leader>5",  hidden = true },
	{ "<leader>6",  hidden = true },
	{ "<leader>7",  hidden = true },
	{ "<leader>8",  hidden = true },
	{ "<leader>9",  hidden = true },
	{ "<leader>0",  hidden = true },

	-- explorer
	{ "<leader>e",  group = "Explorer" },
	{ "<leader>es", "<cmd>NvimTreeToggle<cr>",      desc = "Toggles project files" },
	{
		"<leader>eh",
		function()
			nvim_tree_api.tree.toggle_hidden_filter()
		end,
		desc = "Toggles hidden files filter"
	},
	{
		"<leader>eY",
		function()
			nvim_tree_api.fs.copy.relative_path()
		end,
		desc = "Copy relative path"
	},
	{
		"<leader>ey",
		function()
			nvim_tree_api.fs.copy.filename()
		end,
		desc = "Copy filename"
	},
	{
		"<leader>er",
		function()
			nvim_tree_api.fs.rename_full()
		end,
		desc = "Rename full path"
	},
	{
		"<leader>eg",
		function()
			nvim_tree_api.node.open.toggle_group_empty()
		end,
		desc = "Group empty directories"
	},
	-- Code actions
	{ "<leader>c", group = "Code action" },
	{
		'<leader>ca',
		'<cmd>lua vim.lsp.buf.code_action()<CR>',
		desc = 'Code action',
		mode = 'n',
	},
	{
		'<leader>cr',
		'<cmd>lua vim.lsp.buf.rename()<CR>',
		desc = 'Rename symbol',
		mode = 'n',
	},
	-- {
	-- 	'<leader>cf',
	-- 	'<cmd>lua vim.lsp.buf.format()<CR>',
	-- 	desc = 'Format file',
	-- 	mode='n',
	-- },

	--lsp
	{
		"gd",
		"<cmd>lua vim.lsp.buf.definition()<cr>",
		desc = "Go to definition",
		mode = "n",
	},
	{
		"gD",
		"<cmd>lua vim.lsp.buf.declaration()<cr>",
		desc = "Go to declaration",
		mode = "n",
	},
	{
		'grr',
		'<cmd>lua vim.lsp.buf.references()<CR>',
		desc = 'Highlight references',
		mode = 'n',
	},
	{
		'gi',
		'<cmd>lua vim.lsp.buf.implementation()<CR>',
		desc = 'Go to implementation',
		mode = 'n',
	},

	-- {
	-- 	'gt',
	-- 	'<cmd>lua vim.lsp.buf.type_definition()<CR>',
	-- 	mode = 'n',
	-- },
	-- {
	-- 	mode='n',
	-- 	'<leader>gw',
	-- 	'<cmd>lua vim.lsp.buf.document_symbol()<CR>',
	-- },
	-- {
	-- 	mode='n',
	-- 	'<leader>gW',
	-- 	'<cmd>lua vim.lsp.buf.workspace_symbol()<CR>',
	-- },
	-- {
	-- 	mode='n',
	-- 	'<leader>ah',
	-- 	'<cmd>lua vim.lsp.buf.hover()<CR>',
	-- },
	-- {
	-- 	mode='n',
	-- 	'<leader>ee',
	-- 	'<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>',
	-- },
	-- {
	-- 	mode='n',
	-- 	'<leader>ai',
	-- 	'<cmd>lua vim.lsp.buf.incoming_calls()<CR>',
	-- },
	-- {
	-- 	mode='n',
	-- 	'<leader>ao',
	-- 	'<cmd>lua vim.lsp.buf.outgoing_calls()<CR>',
	-- },
	-- vim.api.nvim_set_keymap(
	-- 	'n', '<leader>d', ':lua vim.diagnostic.open_float()<CR>',
	-- 	{ noremap = true, silent = true }
	-- )
	-- other

	{
		'<leader>fy',
		function()
			local current_buffer_relative_path = vim.fn.expand("%:.")
			vim.fn.setreg("+", current_buffer_relative_path)
		end,
		desc = "Copy relative path of file in a buffer",
	},
	{
		"<leader>y",
		'"+y',
		mode = "v",
		desc = "Copy to clipboard",
	},
	{
		"<leader>p",
		'"+p',
		mode = { "v", 'n' },
		desc = "Paste from clipboard",
	},
})
