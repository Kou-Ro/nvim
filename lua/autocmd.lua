local opt_local = vim.opt_local

vim.api.nvim_create_autocmd({ 'TermOpen' }, {
  callback = function(arg)
    opt_local.number = false
    opt_local.signcolumn = 'no'
  end,
})
