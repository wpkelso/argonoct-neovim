local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
        ["qfText"]      = { link = 'Normal' },
        ["qfError"]     = { link = 'Error' },
        ["qfLineNr"]    = { link = 'LineNr' },
        ["qfFileName"]  = { link = 'Normal' },
        ["qfSeparator1"]= { link = 'Delimiter' },
        ["qfSeparator2"]= { link = 'Delimiter' },

	}
end

return M
