local enabled = true

if enabled then
  return {
    {
      'ibhagwan/fzf-lua',
      enabled = true,
      dependencies = {
        {
          'nvim-tree/nvim-web-devicons',
          enavled = true,
        },
      },
      config = function()
        require('fzf-lua').setup({})
      end,
    },
    {
      'nvim-tree/nvim-tree.lua',
      enabled = true,
      lazy = false,
      dependencies = {
        {
          'nvim-tree/nvim-web-devicons',
        },
      },
      config = function()
        require('nvim-tree').setup({})
      end,
    },
    {
      'windwp/nvim-autopairs',
      enabled = true,
      event = 'InsertEnter',
      config = function()
        local autopairs = require('nvim-autopairs')
        autopairs.setup({ check_ts = true })

        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        local cmp = require('cmp')
        cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
      end,
    },
    {
      'windwp/nvim-ts-autotag',
      enabled = true,
      dependencies = {
        'nvim-treesitter/nvim-treesitter',
      },
      config = function()
        require('nvim-ts-autotag').setup({})
      end,
    },
    {
      'nvim-treesitter/nvim-treesitter',
      enabled = true,
      lazy = true,
      build = ':TSUpdate',
      config = function()
        require('pluginConfig/nvim-treesitter')
      end,
    },
    {
      'lervag/vimtex',
      enabled = true,
      init = function()
        vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_compiler_method = 'latexmk'
        vim.g.vimtex_indent_enabled = 1
        vim.g.vimtex_syntax_enabled = 1
        vim.g.vimtex_syntax_conceal_disable = 1
        vim.g.vimtex_compiler_latexmk = {
          options = {
            '-pdf',
            '-lualatex',
            '-interaction=nonstopmode',
            '-synctex=1',
          },
        }
      end,
    },
  }
else
  return {}
end
