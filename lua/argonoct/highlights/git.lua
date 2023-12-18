local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["SignAdd"]        = { fg = c['ygn'], bg = 'NONE', bold = true },
		["SignChange"]     = { fg = c['blu'], bg = 'NONE', bold = true },
		["SignDelete"]     = { fg = c['red'], bg = 'NONE', bold = true },
		["GitSignsAdd"]    = { fg = c['ygn'], bg = 'NONE', bold = true },
		["GitSignsChange"] = { fg = c['blu'], bg = 'NONE', bold = true },
		["GitSignsDelete"] = { fg = c['red'], bg = 'NONE', bold = true },
	}
end

return M
