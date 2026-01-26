return {
  config = function()
    require('CopilotChat').setup({
      show_help = 'yes',
      language = 'Japanese',
      prompts = {
        Explain = {
          mapping = '<leader>ce',
        },
        Review = {
          mapping = '<leader>cr',
        },
        Fix = {
          mapping = '<leader>cf',
        },
        Optimize = {
          mapping = '<leader>co',
        },
        Docs = {
          mapping = '<leader>cd',
        },
        Tests = {
          mapping = '<leader>ct',
        },
        Commit = {
          mapping = '<leader>cco',
        },
      },
    })
  end,
}
