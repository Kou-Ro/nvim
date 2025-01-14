local enabled = false

if enabled then
  return {
    {
      'williamboman/mason.nvim',
      config = function()
        require('mason').setup({
          max_concurrent_installers = 10,
        })
      end,
      build = ':MasonUpdate',
    },
    {
      'williamboman/mason-lspconfig.nvim',
      dependencies = {
        'williamboman/mason.nvim',
        'neovim/nvim-lspconfig',
      },
      config = function()
        require('mason-lspconfig').setup({
          ensure_installed = require("pluginConfig/mason-lspconfig-servers")
        })
        require('mason-lspconfig').setup_handlers({
          function(server_name)
            require('lspconfig')[server_name].setup{}
          end,
          ['lua_ls'] = function()
            require('lspconfig')['lua_ls'].setup({
              settings = {
                Lua = {
                  diagnostics = {
                    globals = {'vim'},
                  },
                },
              },
            })
          end,
        })
      end,
    },
    {
      'neovim/nvim-lspconfig',
      dependencies = {
        'williamboman/mason-lspconfig.nvim',
      },
    },
    {
      'hrsh7th/nvim-cmp',
      dependencies = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-nvim-lsp',
      },
      event = {'InsertEnter', 'CmdlineEnter'},
      config = function()
        local cmp = require('cmp')
        cmp.setup({
          sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'copilot' },
            { name = 'buffer' },
            { name = 'path' },
          }),
        })
      end,
      enable = false,
    },
    {
      'windwp/nvim-autopairs',
      event = 'InsertEnter',
      config = function()
        local autopairs = require('nvim-autopairs')
        autopairs.setup({ check_ts = true })

        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        local cmp = require('cmp')
        cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
      end,
      enable = false,
    },
    {
      'zbirenbaum/copilot.lua',
      config = function()
        require('copilot').setup({
          suggestion = { enabled = true },
          panel = { enabled = true },
        })
      end,
      enable =  false,
    },
    {
      'zbirenbaum/copilot-cmp',
      config = function ()
        require('copilot_cmp').setup()
      end,
      enable = false,
    },
  }
else
  return {}
end
