return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
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
    },
  }
}
