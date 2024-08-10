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
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = true,
    lazy = true,
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = {"arduino","bash","c","c_sharp","cmake","comment","cpp","css","diff","dockerfile","git_config","git_rebase","gitattributes","gitcommit","gitignore","java","javascript","jsdoc","json","json5","jsonc","kotlin","latex","lua","make","markdown","markdown_inline","passwd","python","rust","scheme","sql","ssh_config","tsx","typescript","udev","vim","vimdoc","yaml",},
        sync_install = true,
        highlight = {enable=true},
        indent = {enable=true},
      })
    end,
  }
}
