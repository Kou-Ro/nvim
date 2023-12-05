--- Set vim options
-- @param variableName Option variableName
-- @param value Option value
-- @return Value after set
function vset(variableName, value)
    vim.o[variableName] = value
    return vim.o[variableName]
end

--- Get vim options
-- @param variableName Option variableName
-- @return Option value
function vget(variableName)
    return vim.o[variableName]:get()
end
