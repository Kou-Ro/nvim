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

local set = require('lib/keymap').set
local n = 'n'

local neotest = require('neotest')

-- For all neotest adapters
set(n, '<leader>tt', neotest.run.run(), 'Run nearest test')
set(n, '<leader>tf', neotest.run.run(vim.fn.expand('%')), 'Run current file tests')
set(n, '<leader>td', neotest.run.run({ strategy = 'dap' }), 'Debug nearest test')
set(n, '<leader>ts', neotest.summary.toggle(), 'Toggle test summary')
set(n, '<leader>to', neotest.output.open({ enter = true }), 'Open test output')

-- For neotest-playwright
set(n, '<leader>tp', ':NeotestPlaywrightProject<CR>', 'Playwright project settings')
set(n, '<leader>tpr', ':NeotestPlaywrightPreset<CR>', 'Playwright preset')
set(n, '<leader>tra', ':NeotestPlaywrightRefresh<CR>', 'Playwright refresh')
set(n, '<leader>th', ':NeotestPlaywrightPreset<CR>', 'Set headed preset')

set(n, '<leader>twr', require('neotest').run.run({ vitestCommand = 'vitest--watch' }), 'RunWatch')
set(
  n,
  '<leader>twf',
  require('neotest').run.run({ vim.fn.expand('%'), vitestCommand = 'vitest--watch' }),
  'RunWatchFile'
)
