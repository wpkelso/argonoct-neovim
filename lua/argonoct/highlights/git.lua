local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["SignAdd"]        = { link = 'DiffAdd' },
		["SignChange"]     = { link = 'DiffChange' },
		["SignDelete"]     = { link = 'DiffDelete' },
		["GitSignsAdd"]    = { link = 'DiffAdd' },
		["GitSignsChange"] = { link = 'DiffChange' },
		["GitSignsDelete"] = { link = 'DiffDelete' },
	}
end

return M
