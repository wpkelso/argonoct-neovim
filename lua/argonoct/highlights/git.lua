local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["SignAdd"]        = { fg = c['bg'], bg = c['ygn'] },
		["SignChange"]     = { fg = c['bg'], bg = c['lbl'] },
		["SignDelete"]     = { fg = c['bg'], bg = c['red'] },
		["GitSignsAdd"]    = { fg = c['bg'], bg = c['ygn'] },
		["GitSignsChange"] = { fg = c['bg'], bg = c['lbl'] },
		["GitSignsDelete"] = { fg = c['bg'], bg = c['red'] },
	}
end

return M
