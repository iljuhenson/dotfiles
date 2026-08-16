local installed_lsp_servers = require("user.lsp.installed")

return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = installed_lsp_servers,
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	}
}
