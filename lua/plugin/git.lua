local enabled = false

if enabled then
  return {
    {
      'sindrets/diffview.nvim',
      enabled = true,
    },
    {
      'rhysd/git-messenger.vim',
      enabled = true,
    }
  }
else
  return {}
end
