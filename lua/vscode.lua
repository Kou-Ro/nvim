require('function')
require('vimopt')

local set = require('lib/keymap').set
local n = 'n'

-- VS Code のコマンドを Neovim のキーバインドで呼ぶ設定例
set(n, 'gd', "<Cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>", 'Goto Definition')
set(n, 'gr', "<Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>", 'Goto References')
set(n, '<leader>rn', "<Cmd>call VSCodeNotify('editor.action.rename')<CR>", 'Rename Symbol')
set(n, '<leader>ca', "<Cmd>call VSCodeNotify('editor.action.quickFix')<CR>", 'Code Action')
