return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
  dependencies = { 
    "nvim-lua/plenary.nvim",
    "nvim-neorg/lua-utils.nvim",
  },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
      },
    }
  end,
}
