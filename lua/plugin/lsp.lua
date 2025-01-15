local enabled = true

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
                },
              },
            })
          end,
        })
      end,
    },
    {
      'neovim/nvim-lspconfig',
      enable = true,
      dependencies = {
        'williamboman/mason-lspconfig.nvim',
      },
    },
    {
      'L3MON4D3/LuaSnip',
      enable = true,
      version = 'v2.*',
      build = 'make install_jsregexp',
    },
    {
      'saadparwaiz1/cmp_luasnip',
      enable = true,
    },
    {
      'hrsh7th/nvim-cmp',
      enable = true,
      dependencies = {
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'L3MON4D3/LUaSnip',
        'saadparwaiz1/cmp_luasnip',
      },
      event = { 'InsertEnter', 'CmdlineEnter' },
      config = function()
        local cmp = require('cmp')
        cmp.setup({
          snippet = {
            expand = function(args)
              require('luasnip').lsp_expand(args.body)
            end,
          },
          window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.borderd(),
          },
          mapping = cmp.mapping.preset.insert({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.abort(),
            ['<CR>'] = cmp.mapping.confirm({ select = true }),
          }),
          sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
            { name = 'buffer' },
            { name = 'path' },
          }),
        })
      end,
    },
    {
      'hrsh7th/cmp-nvim-lsp',
      enable = true,
      config = function()
        require('cmp_nvim_lsp').default_capabilities()
      end,
    },
    {
      'windwp/nvim-autopairs',
      enable = true,
      event = 'InsertEnter',
      config = function()
        require('nvim-autopairs').setup({
          check_ts = true,
        })
        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        local cmp = require('cmp')
        cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
      end,
    },
    {
      'zbirenbaum/copilot.lua',
      enable = false,
      config = function()
        require('copilot').setup({
          suggestion = { enabled = true },
          panel = { enabled = true },
        })
      end,
    },
    {
      'zbirenbaum/copilot-cmp',
      enable = false,
      config = function()
        require('copilot_cmp').setup()
      end,
    },
  }
else
  return {}
end
