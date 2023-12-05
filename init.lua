NDOTDIR = os.getenv("HOME") .. "/nvim"
if os.getenv("DOTFILES") then
    NDOTDIR = os.getenv("DOTFILES") .. "/nvim"
end

vim.opt.runtimepath = vim.opt.runtimepath .. NDOTDIR

require("Common")