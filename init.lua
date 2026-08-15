NDOTDIR = os.getenv('HOME') .. '/nvim'
if os.getenv('DOTFILES') then
  NDOTDIR = os.getenv('DOTFILES') .. '/nvim'
end

-- VS Code Neovim environment
if vim.g.vscode then
  require('vscode')
  return
end

require('common')
