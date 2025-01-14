local enabled = true

if enabled then
  return {
    {
      'folke/tokyonight.nvim',
      enabled = true,
      lazy = false,
      priority = 1000,
      config = function()
        require('pluginConfig/tokyonight')
      end,
    },
  }
else
  return {}
end
