require('lualine').setup{
  tabline = {
    lualine_a = {},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  sections = {
    lualine_b = {'branch','diff'},
    lualine_c = {{
      'diagnostics',
      sources = {'nvim_lsp'},
      symbols = {error = '✕', warn = '⚠', info = '⭘', hint = '✓'},
    }},
    lualine_x = {function() return '#'..tostring(vim.api.nvim_get_current_buf());end},
  }
}
