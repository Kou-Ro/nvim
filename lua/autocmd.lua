local opt_local = vim.opt_local
local bo = vim.bo

vim.api.nvim_create_autocmd({ 'TermOpen' }, {
  callback = function(arg)
    opt_local.number = false
    opt_local.signcolumn = 'no'
  end,
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
  callback = function(arg)
    bo.shiftwidth = 2
    bo.tabstop = 2
  end,
})
