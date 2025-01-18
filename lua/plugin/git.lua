local enabled = true

if enabled then
  return {
    {
      'sindrets/diffview.nvim',
      enabled = true,
    },
    {
      'rhysd/git-messenger.vim',
      enabled = true,
    },
    {
      'akinsho/git-conflict.nvim',
      enabled = true,
      config = function()
        require('git-conflict').setup()
      end,
    },
  }
else
  return {}
end
