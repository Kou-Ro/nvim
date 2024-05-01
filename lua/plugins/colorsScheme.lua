return {
  {
    "folke/tokyonight.nvim",
    enabled = tree,
    config = function()
      require("pluginConfig/tokyonight")
      vim.cmd("colorscheme tokyonight-night")
    end,
  },
}
    

