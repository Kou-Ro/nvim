return {
  {
    "noeclide/coc.nvim",
    enabled = true,
    branch = "release",
  },
  {
    "ibhagwan/fzf-lua",
    enabled = true,
    dependencies = {
      {
        "nvim-tree/nvim-web-devices",
        enavled = true,
      },
    },
    config = function()
      require("fzf-lua").setup({})
    end,
  },
  {
    "poco81/auto-save.nvim",
    enabled = true,
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
