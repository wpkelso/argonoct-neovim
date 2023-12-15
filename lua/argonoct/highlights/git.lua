local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["SignAdd"]        = { fg = c['bg'], bg = c['ygn'], bold = true },
		["SignChange"]     = { fg = c['bg'], bg = c['blu'], bold = true },
		["SignDelete"]     = { fg = c['bg'], bg = c['red'], bold = true },
		["GitSignsAdd"]    = { fg = c['bg'], bg = c['ygn'], bold = true },
		["GitSignsChange"] = { fg = c['bg'], bg = c['blu'], bold = true },
		["GitSignsDelete"] = { fg = c['bg'], bg = c['red'], bold = true },
	}
end

return M
