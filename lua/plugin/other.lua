local enabled = true

if enabled then
  return {
    {
      'andweeb/presence.nvim',
      enabled = true,
      lazy = false,
      config = true,
    },
    {
      'wakatime/vim-wakatime',
      enabled = true,
      lazy = false,
    },
  }
else
  return {}
end
