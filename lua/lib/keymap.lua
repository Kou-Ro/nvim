return {
  set = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { desc = desc })
  end,

  modes = {
    NORMAL = 'n',
    INSERT = 'i',
    VISUAL = 'v',
    VISUAL_BLOCK = 'x',
    TERM = 't',
    COMMAND = 'c',
  },
}
