local tsconfig = require('nvim-treesitter')
local tslanguages = {
  'arduino',
  'bash',
  'c',
  'c_sharp',
  'cmake',
  'comment',
  'cpp',
  'css',
  'diff',
  'dockerfile',
  'git_config',
  'git_rebase',
  'gitattributes',
  'gitcommit',
  'gitignore',
  'java',
  'javascript',
  'jsdoc',
  'json',
  'json5',
  'kotlin',
  'lua',
  'make',
  'markdown',
  'markdown_inline',
  'passwd',
  'python',
  'rust',
  'scheme',
  'sql',
  'ssh_config',
  'tsx',
  'typescript',
  'udev',
  'vim',
  'vimdoc',
  'yaml',
}

tsconfig.install(tslanguages)

vim.api.nvim_create_autocmd('FileType', {
  pattern = tslanguages,
  callback = function(args)
    pcall(vim.treesitter.start, args.buf)
  end,
})
