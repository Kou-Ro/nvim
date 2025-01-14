require('lualine').setup{
  tabline = {
    lualine_a = {'branch'},
    lualine_b = {'filetype', 'encoding'},
    lualine_c = {'filename'},
    lualine_x = {{
      'buffers',
      show_filename_only = true,
      hide_filename_extension = false,
      show_modified_status = false,
      mode =  4,
    }},
    lualine_y = {},
    lualine_z = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'diff'},
    lualine_c = {{
      'diagnostics',
      sources = {'nvim_lsp'},
      symbols = {error = '✕', warn = '⚠', info = '⭘', hint = '✓'},
    }},
    lualine_x = {function() return '#'..tostring(vim.api.nvim_get_current_buf());end},
    lualine_y = {'progress',{
      'location',
      fmt = function(disp)return string.gsub(disp,':','-')end
    }},
    lualine_z = {
      {
        'datetime',
        style = '%H:%M:%S',
      }},
    }
  }
