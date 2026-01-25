local enabled = true

if enabled then
  return {
    {
      'nvim-neotest/neotest',
      enabled = true,
      dependencies = {
        'nvim-neotest/nvim-nio',
        'nvim-lua/plenary.nvim',
        'antoinemadec/FixCursorHold.nvim',
        'nvim-treesitter/nvim-treesitter',
        'marilari88/neotest-vitest',
      },
      config = function()
        require('pluginConfig/neotest')
      end,
    },
    {
      'thenbe/neotest-playwright',
      enabled = true,
      dependencies = {
        'nvim-telescope/telescope.nvim',
      },
    },
    {
      'marilari88/neotest-vitest',
      enabled = true,
    },
  }
else
  return {}
end
