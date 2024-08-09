return {
  {
    "nvim-lualine/lualine.nvim",
    enabled = true,
    config = function()
        require("pluginConfig/lualine")
    end,
    dependencies = {
      {
          "nvim-tree/nvim-web-devicons"
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = false,
    lazy = true,
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = {"arduino","bash","c","c_sharp","cmake","comment","cpp","css","diff","dockerfile","git_config","git_rebase","gitattributes","gitcommit","gitignore","java","javascript","jsdoc","json","json5","JSON with comments","kotlin","latex","lua","make","markdown","markdown_inline","passwd","python","rust","scheme","sql","ssh_config","tsx","typescript","udev","vim","vimdoc","yaml",},
        sync_install = true,
        highlight = {enable=true},
        indent = {enable=true},
      })
    end,
  }
}
