return {
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
    end
  },
}
