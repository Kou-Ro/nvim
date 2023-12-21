require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'lua',
    'javascript'
  }, -- インストールする言語（'all'はすべての言語）
  highlight = {
    enable = true,              -- ハイライトを有効にする
  },
}