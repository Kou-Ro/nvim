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
      'nvim-treesitter/nvim-treesitter',
      enabled = true,
      lazy = true,
      build = ':TSUpdate',
      config = function()
        require('pluginConfig/nvim-treesitter')
      end,
    },
  }
else
  return {}
end
