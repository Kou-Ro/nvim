-- Set runtimepath
vset("packpath", vget("packpath") .. "," .. NDOTDIR .. "/module/")
vset("runtimepath", vget("runtimepath") .. "," .. NDOTDIR .. "/module/")

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
require('packer').startup(function()
  use "wbthomason/packer.nvim"

  use {
    "nvim-treesitter/nvim-treesitter",
    config = function() require("PluginConfig/nvim-treesitter")  end,
  }
end)

