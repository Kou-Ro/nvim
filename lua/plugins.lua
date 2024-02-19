-- Set runtimepath
vset("packpath", vget("packpath") .. "," .. NDOTDIR .. "/module/")
vset("runtimepath", vget("runtimepath") .. "," .. NDOTDIR .. "/module/")


-- This file can be loaded by calling `lua require('plugins')` from your init.vim
require('packer').startup(function()
  use {
    "wbthomason/packer.nvim",
    opt = true,
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    config = function() require("PluginConfig/nvim-treesitter")  end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function() require("PluginConfig/lualine") end,
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  }

  use {
    "nvim-lualine/lualine.nvim",
  }

  use {
    "folke/tokyonight.nvim",
    config = function()
      require("PluginConfig/tokyonight")
      vim.cmd("colorscheme tokyonight")
    end,
  }

  use {
    "codota/tabnine-nvim",
    run = "./dl_binaries.sh",
    config = function()  require("PluginConfig/tabnine") end
  }

  use {
    "neoclide/coc.nvim",
    branch = "release"
  }

  use {
    "mattn/emmet-vim"
  }

  use {
    "ibhagwan/fzf-lua",
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  use {
    "andweeb/presence.nvim"
  }

  use {
    "sindrets/diffview.nvim"
  }

  use {
    "rhysd/git-messenger.vim"
  }

  use {
    "pocco81/auto-save.nvim",
    config = function() require("PluginConfig/auto-save") end
  }

  use {
    "wakatime/vim-wakatime"
  }

  use {
      "github/copilot.vim"
  }
end)

