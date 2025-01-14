local enabled = true

if enabled then
  return {
    {
      'andweeb/pressence.nvim',
      enabled = false,
      lazy = false,
    },
    {
      'wakatime/vim-wakatime',
      enabled = true,
      lazy = false
    },
  }
else
  return {}
end
