require('mason-lspconfig').setup({
  ensure_installed = require('pluginConfig/mason-lspconfig-servers'),
})
require('mason-lspconfig').setup_handlers({
  function(server_name)
    require('lspconfig')[server_name].setup({})
  end,
  ['lua_ls'] = function()
    require('lspconfig')['lua_ls'].setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
          format = {
            enable = true,
            defalutConfig = {
              indent_style = 'space',
              indent_size = 2,
              quote_style = 'single',
              call_arg_parentheses = 'keep',
              continuation_indent = 4,
              trailing_table_separator = 'always',
              space_around_table_field_list = false,
              space_before_attribute = false,
              space_before_function_open_parenthesis = false,
              space_before_function_call_open_parenthesis = false,
              space_before_function_call_single_arg = false,
              space_before_open_square_bracket = false,
              space_inside_function_call_parentheses = false,
              space_inside_function_param_list_parentheses = false,
              space_inside_square_brackets = false,
              space_around_table_append_operator = false,
              ignore_spaces_inside_function_call = false,
              space_before_inline_comment = 1,
              space_around_math_operator = true,
              space_after_comma = true,
              space_after_comma_in_for_statement = true,
              space_around_concat_operator = true,
              align_continuous_assign_statement = false,
              align_continuous_rect_table_field = false,
              align_if_branch = false,
              align_array_table = false,
            },
          },
        },
      },
    })
  end,
})
