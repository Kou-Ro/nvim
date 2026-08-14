NDOTDIR = os.getenv('HOME') .. '/nvim'
if os.getenv('DOTFILES') then
  NDOTDIR = os.getenv('DOTFILES') .. '/nvim'
end

-- VS Code Neovim environment
if vim.g.vscode then
  require('function')
  require('vimopt')
  return
end

require('common')
