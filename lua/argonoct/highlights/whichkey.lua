local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["WhichKey"]          = { fg = c.fg, bg = 'NONE' },
		["WhichKeySeparator"] = { fg = c.slv, bg = 'NONE' },
		["WhichKeyGroup"]     = { fg = c.cyn, bg = 'NONE' },
		["WhichKeyDesc"]      = { fg = c.blu, bg = 'NONE' },
		["WhichKeyFloat"]     = { fg = 'NONE', bg = c.bg },
	}
end

return M
