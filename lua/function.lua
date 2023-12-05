--- Set vim options
-- @param variableName Option variableName
-- @param value Option value
-- @return Value after set
function vset(variableName, value)
    vim.opt[variableName] = value
    return vim.opt[variableName]:get()
end

--- Get vim options
-- @param variableName Option variableName
-- @return Option value
function vget(variableName)
    return vim.opt[variableName]:get()
end
