return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },

    config = function()
      function CustomNvimTreeOnAttach(bufnr)
        local api = require("nvim-tree.api")

        api.config.mappings.default_on_attach(bufnr)

        vim.keymap.set('n', '<Leader>e', api.tree.toggle)
      end

      require("nvim-tree").setup({
        on_attach = CustomNvimTreeOnAttach,
        view = {
          relativenumber = true,
          width = 50,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          git_ignored = false,
        }
      })

      vim.g.nvim_tree_group_empty = 1
    end
  }
}
