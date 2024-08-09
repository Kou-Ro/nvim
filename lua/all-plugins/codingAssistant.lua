return {
  {
    "noeclide/coc.nvim",
    enabled = false,
    branch = "release",
  },
  {
    "ibhagwan/fzf-lua",
    enabled = true,
    dependencies = {
      {
        "nvim-tree/nvim-web-devicons",
        enavled = true,
      },
    },
    config = function()
      require("fzf-lua").setup({})
    end,
  },
  {
    "poco81/auto-save.nvim",
    enabled = false,
--  config = function()
--    require("pluginConfig/auto-save")
--  end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = true,
    lazy = false,
    dependencies = {
      {
        "nvim-tree/nvim-web-devicons",
      },
    },
    config = function()

      require("nvim-tree").setup({})
    end,
  },
}
