NDOTDIR = os.getenv("HOME") .. "/nvim"
if os.getenv("DOTFILES") then
    NDOTDIR = os.getenv("DOTFILES") .. "/nvim"
end

set.opt.runtimepath = set.opt.runtimepath .. NDOTDIR

require("Common")