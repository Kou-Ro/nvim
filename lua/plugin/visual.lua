local enabled = true

if enabled then
  return {
    {
      'nvim-lualine/lualine.nvim',
      enabled = true,
      dependencies = {
        'nvim-tree/nvim-web-devicons',
      },
      config = function()
        require('pluginConfig/lualine')
      end,
    },
    {
      'lukas-reineke/indent-blankline.nvim',
      enabled = true,
      main = 'ibl',
      opts = {},
    },
  }
else
  return {}
end
