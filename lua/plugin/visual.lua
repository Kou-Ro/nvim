return {
  {
    "nvim-lualine/lualine.nvim",
    enabled = true,
    dependencies = {
      {
          "nvim-tree/nvim-web-devicons"
      },
    },
    config = function()
        require("pluginConfig/lualine")
    end,
  },
}
