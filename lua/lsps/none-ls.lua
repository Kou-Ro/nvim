local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      filetypes = {
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
    }),
  },
})
