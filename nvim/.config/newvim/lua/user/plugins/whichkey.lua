return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			keys = {
				scroll_down = "<c-d>",
				scroll_up = "<c-u>",
			},
			presets = {
				operators = true,
				motions = true,
				text_objects = true,
				windows = true,
				nav = true,
				z = true,
				g = true,
			}
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	}
}
