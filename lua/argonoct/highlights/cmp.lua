local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["CmpItemAbbrDeprecated"]    = { fg = c['gry'], bg = c['blk'], strikethrough = true, },
		["CmpItemAbbrMatch"]         = { fg = c['blu'], bg = c['blk'] },
		["CmpItemAbbrMatchFuzzy"]    = { fg = c['blu'], bg = c['blk'] },
		["CmpItemKindFunction"]      = { fg = c['blu'], bg = c['blk'] },
		["CmpItemKindMethod"]        = { fg = c['blu'], bg = c['blk'] },
		["CmpItemKindConstructor"]   = { fg = c['cyn'], bg = c['blk'] },
		["CmpItemKindClass"]         = { fg = c['cyn'], bg = c['blk'] },
		["CmpItemKindEnum"]          = { fg = c['cyn'], bg = c['blk'] },
		["CmpItemKindEvent"]         = { fg = c['ylw'], bg = c['blk'] },
		["CmpItemKindInterface"]     = { fg = c['blu'], bg = c['blk'] },
		["CmpItemKindStruct"]        = { fg = c['blu'], bg = c['blk'] },
		["CmpItemKindVariable"]      = { fg = c['red'], bg = c['blk'] },
		["CmpItemKindField"]         = { fg = c['red'], bg = c['blk'] },
		["CmpItemKindProperty"]      = { fg = c['red'], bg = c['blk'] },
		["CmpItemKindEnumMember"]    = { fg = c['org'], bg = c['blk'] },
		["CmpItemKindConstant"]      = { fg = c['org'], bg = c['blk'] },
		["CmpItemKindKeyword"]       = { fg = c['pur'], bg = c['blk'] },
		["CmpItemKindModule"]        = { fg = c['cyn'], bg = c['blk'] },
		["CmpItemKindValue"]         = { fg = c['fg'],  bg = c['blk'] },
		["CmpItemKindUnit"]          = { fg = c['fg'],  bg = c['blk'] },
		["CmpItemKindText"]          = { fg = c['fg'],  bg = c['blk'] },
		["CmpItemKindSnippet"]       = { fg = c['ylw'], bg = c['blk'] },
		["CmpItemKindFile"]          = { fg = c['fg'],  bg = c['blk'] },
		["CmpItemKindFolder"]        = { fg = c['fg'],  bg = c['blk'] },
		["CmpItemKindColor"]         = { fg = c['fg'],  bg = c['blk'] },
		["CmpItemKindReference"]     = { fg = c['fg'],  bg = c['blk'] },
		["CmpItemKindOperator"]      = { fg = c['fg'],  bg = c['blk'] },
		["CmpItemKindTypeParameter"] = { fg = c['red'], bg = c['blk'] },
	}
end

return M
