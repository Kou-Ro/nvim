local enabled = true

if enabled then
  return {
    {
      'andweeb/pressence.nvim',
      enabled = true,
      lazy = false,
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
