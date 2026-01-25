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
set(n, '<leader>tt', function()
  neotest.run.run()
end, 'Run nearest test')
set(n, '<leader>tf', function()
  neotest.run.run(vim.fn.expand('%'))
end, 'Run current file tests')
set(n, '<leader>td', function()
  neotest.run.run({ strategy = 'dap' })
end, 'Debug nearest test')
set(n, '<leader>ts', function()
  neotest.summary.toggle()
end, 'Toggle test summary')
set(n, '<leader>to', function()
  neotest.output.open({ enter = true })
end, 'Open test output')

-- For neotest-playwright
set(n, '<leader>tp', ':NeotestPlaywrightProject<CR>', 'Playwright project settings')
set(n, '<leader>tpr', ':NeotestPlaywrightPreset<CR>', 'Playwright preset')
set(n, '<leader>tra', ':NeotestPlaywrightRefresh<CR>', 'Playwright refresh')
set(n, '<leader>th', ':NeotestPlaywrightPreset<CR>', 'Set headed preset')

set(n, '<leader>twr', function()
  require('neotest').run.run({ vitestCommand = 'vitest--watch' })
end, 'RunWatch')
set(n, '<leader>twf', function()
  neotest.run.run({ vim.fn.expand('%'), vitestCommand = 'vitest--watch' })
end, 'RunWatchFile')
