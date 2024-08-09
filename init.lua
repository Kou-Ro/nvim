NDOTDIR = os.getenv("HOME") .. "/nvim"
if os.getenv("DOTFILES") then
    NDOTDIR = os.getenv("DOTFILES") .. "/nvim"
end

vim.opt.runtimepath:append(NDOTDIR)

require("common")
