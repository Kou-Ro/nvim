vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local keymap = require('lib/keymap')
    local set = keymap.set
    local n = keymap.modes.NORMAL

    -- Symbol-related mappings
    set(n, 'gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    set(n, 'gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    set(n, 'gi', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
    set(n, 'gr', vim.lsp.buf.references, '[G]oto [R]eferences')
    set(n, 'gy', vim.lsp.buf.type_definition, '[G]oto T[y]pe Definition')

    -- Hover and help
    set(n, 'K', vim.lsp.buf.hover, 'Show Hover Documentation')
    set(n, '<C-k>', vim.lsp.buf.signature_help, 'Show Signature Help')

    -- Editing operations
    set(n, '<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    set(n, '<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
    set(n, '<leader>f', function()
      vim.lsp.buf.format({ async = true })
    end, '[F]ormat')

    -- Diagnostics
    set(n, '[d', vim.diagnostic.goto_prev, 'Previous [D]iagnostic')
    set(n, ']d', vim.diagnostic.goto_next, 'Next [D]iagnostic')
    set(n, '<leader>e', vim.diagnostic.open_float, 'Show [E]rror')
    set(n, '<leader>q', vim.diagnostic.setloclist, '[Q]uickfix List')

    -- Workspace management
    set(n, '<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
    set(n, '<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
    set(n, '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, '[W]orkspace [L]ist Folders')
  end,
})

require('lsps.none-ls')
