local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["SignAdd"]        = { fg = c['ygn'], bg = c['ygn'] },
		["SignChange"]     = { fg = c['lbl'], bg = c['lbl'] },
		["SignDelete"]     = { fg = c['red'], bg = c['red'] },
		["GitSignsAdd"]    = { fg = c['ygn'], bg = c['ygn'] },
		["GitSignsChange"] = { fg = c['lbl'], bg = c['lbl'] },
		["GitSignsDelete"] = { fg = c['red'], bg = c['red'] },
	}
end

return M
