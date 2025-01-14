local enabled = false

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
      end
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
      end
    },
    {
      'nvim-treesitter/nvim-treesitter',
      enabled = false,
      lazy = true,
      build = ':TSUpdate',
      config = function()
        local configs = require('nvim-treesitter.configs')
        configs.setup({
          ensure_installed = {'arduino','bash','c','c_sharp','cmake','comment','cpp','css','diff','dockerfile','git_config','git_rebase','gitattributes','gitcommit','gitignore','java','javascript','jsdoc','json','json5','jsonc','kotlin','latex','lua','make','markdown','markdown_inline','passwd','python','rust','scheme','sql','ssh_config','tsx','typescript','udev','vim','vimdoc','yaml',},
          sync_install = false,
          auto_install = true,
          highlight = {enable=true},
          indent = {enable=true},
        })
      end,
    }
  }
else
  return {}
end
