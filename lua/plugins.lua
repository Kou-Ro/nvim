-- Set runtimepath
vset("runtimepath", vget("runtimepath") .. "," .. NDOTDIR .. "/module/packer.nvim")

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function(use)
    -- Packer can manage itself
    use({ "wbthomason/packer.nvim", opt = true })

    -- Color scheme
    use({
        "folke/tokyonight.nvim",
        opt = true,
        config = function()
            vim.cmd "colorscheme tokyonight"
        end
    })
end)
