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
        require('pluginConfig/mason-lspconfig')
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
      'onsails/lspkind.nvim',
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
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'onsails/lspkind.nvim',
        'zbirenbaum/copilot-cmp',
      },
      event = { 'InsertEnter', 'CmdlineEnter' },
      config = function()
        require('pluginConfig/nvim-cmp')
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
      enable = true,
      config = function()
        require('copilot').setup({
          suggestion = { enabled = true },
          panel = { enabled = true },
        })
      end,
    },
    {
      'zbirenbaum/copilot-cmp',
      enable = true,
      config = function()
        require('copilot_cmp').setup()
      end,
    },
  }
else
  return {}
end
