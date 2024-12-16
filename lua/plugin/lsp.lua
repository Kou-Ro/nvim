return {
    {
        'neovim/nvim-lspconfig'
    },
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup()
            require('mason-lspconfig').setup_handlers{
                function(server_name)
                    require('lspconfig')[server_name].setup{}
                end,
            }
        end,
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
        'zbirenbaum/copilot.lua',
        config = function()
            require('copilot').setup({
                suggestion = { enabled = true },
                panel = { enabled = true },
            })
        end,
    },
    {
        'zbirenbaum/copilot-cmp',
        config = function ()
            require('copilot_cmp').setup()
        end
    },
}