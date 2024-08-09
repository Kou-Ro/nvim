return {
  {
    "folke/tokyonight.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    init = function()
        require("pluginConfig/tokyonight")
        vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
