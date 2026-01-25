require('neotest').setup({
  adapters = {
    require('neotest-vitest')({
      filter_dir = function(name, rel_path, root)
        return name ~= 'node_modules'
      end,
    }),
    require('neotest-playwright').adapter({
      options = {
        persist_project_selection = true,
        enable_dynamic_test_discovery = true,
      },
    }),
  },
})
(function()
  local keymap = require('utils/keymap')
  local set = keymap.set
  local n = keymap.mode.NORMAL

  local neotest = require('neotest')

  -- neotestのキーマッピング
  set(n, '<leader>tt', neotest.run.run(), 'Run nearest test')
  set(n, '<leader>tf', neotest.run.run(vim.fn.expand('%')), 'Run current file tests')
  set(n, '<leader>td', neotest.run.run({ strategy = 'dap' }), 'Debug nearest test')
  set(n, '<leader>ts', neotest.summary.toggle(), 'Toggle test summary')
  set(n, '<leader>to', neotest.output.open({ enter = true }), 'Open test output')

  -- neotest-playwright専用のコマンド群
  set(n, '<leader>tp', ':NeotestPlaywrightProject<CR>', 'Playwright project settings')
  set(n, '<leader>tpr', ':NeotestPlaywrightPreset<CR>', 'Playwright preset')
  set(n, '<leader>tra', ':NeotestPlaywrightRefresh<CR>', 'Playwright refresh')

  -- プリセットをheadedに設定（ブラウザ表示）
  set(n, '<leader>th', ':NeotestPlaywrightPreset<CR>', 'Set headed preset')
end)()
