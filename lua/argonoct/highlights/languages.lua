local palette = require('argonoct.palette')

local M = {}

M.groups = function()
    local c = palette.palette()

    --- @type table<string, vim.api.keyset.highlight>
    return {
        --#region C
        ["cInclude"]    = { link = 'Include' },
        ["cIncluded"]   = { link = 'Include' },

        --#region Python
        ["pythonFunction"]  = { link = 'Function' },
        ["pythonBuiltin"]   = { link = 'Function' },
        ["pythonString"]    = { link = 'String' },
        ["pythonConstant"]  = { link = 'Constant' },
    }
end

return M
