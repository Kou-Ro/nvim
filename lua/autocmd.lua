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
    bo.indentexpr = ''
  end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = {
    '*.js',
    '*.jsx',
    '*.ts',
    '*.tsx',
    '*.json',
    '*.css',
    '*.scss',
    '*.html',
    '*.yaml',
    '*.md',
  },
  callback = function()
    vim.lsp.buf.format({
      async = false,
      filter = function(client)
        return client.name == 'null-ls'
      end,
    })
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    local ft = bo[args.buf].filetype
    local lang = vim.treesitter.language.get_lang(ft)
    if not lang then
      return
    end

    pcall(vim.treesitter.start, args.buf)
  end,
})
