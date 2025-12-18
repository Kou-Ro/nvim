local opt_local = vim.opt_local
local bo = vim.bo

vim.api.nvim_create_autocmd({ 'TermOpen' }, {
  callback = function(arg)
    opt_local.number = false
    opt_local.signcolumn = 'no'
  end,
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = 'lua',
  callback = function(arg)
    bo.shiftwidth = 2
    bo.tabstop = 2
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'javascript',
    'javascriptreact',
    'jsx',
    'typescript',
    'typescriptreact',
    'tsx',
    'json',
    'jsonc',
    'css',
    'scss',
    'html',
    'yaml',
    'markdown',
  },
  callback = function()
    bo.shiftwidth = 2
    bo.tabstop = 2
    bo.softtabstop = 2
    bo.expandtab = true
    bo.autoindent = true
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    'javascriptreact',
    'jsx',
    'typescriptreact',
    'tsx',
  },
  callback = function()
    bo.identexpr = ''
  end,
})
