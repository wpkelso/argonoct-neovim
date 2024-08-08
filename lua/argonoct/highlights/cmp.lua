local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["CmpItemAbbrDeprecated"]    = { fg = c['gry'], bg = 'NONE', strikethrough = true, },
		["CmpItemAbbrMatch"]         = { fg = c['blu'], bg = 'NONE' },
		["CmpItemAbbrMatchFuzzy"]    = { fg = c['blu'], bg = 'NONE' },
		["CmpItemKindFunction"]      = { fg = c['blu'], bg = 'NONE' },
		["CmpItemKindMethod"]        = { fg = c['blu'], bg = 'NONE' },
		["CmpItemKindConstructor"]   = { fg = c['cyn'], bg = 'NONE' },
		["CmpItemKindClass"]         = { fg = c['cyn'], bg = 'NONE' },
		["CmpItemKindEnum"]          = { fg = c['cyn'], bg = 'NONE' },
		["CmpItemKindEvent"]         = { fg = c['ylw'], bg = 'NONE' },
		["CmpItemKindInterface"]     = { fg = c['blu'], bg = 'NONE' },
		["CmpItemKindStruct"]        = { fg = c['blu'], bg = 'NONE' },
		["CmpItemKindVariable"]      = { fg = c['red'], bg = 'NONE' },
		["CmpItemKindField"]         = { fg = c['red'], bg = 'NONE' },
		["CmpItemKindProperty"]      = { fg = c['red'], bg = 'NONE' },
		["CmpItemKindEnumMember"]    = { fg = c['org'], bg = 'NONE' },
		["CmpItemKindConstant"]      = { fg = c['org'], bg = 'NONE' },
		["CmpItemKindKeyword"]       = { fg = c['pur'], bg = 'NONE' },
		["CmpItemKindModule"]        = { fg = c['cyn'], bg = 'NONE' },
		["CmpItemKindValue"]         = { fg = c['fg'],  bg = 'NONE' },
		["CmpItemKindUnit"]          = { fg = c['fg'],  bg = 'NONE' },
		["CmpItemKindText"]          = { fg = c['fg'],  bg = 'NONE' },
		["CmpItemKindSnippet"]       = { fg = c['ylw'], bg = 'NONE' },
		["CmpItemKindFile"]          = { fg = c['fg'],  bg = 'NONE' },
		["CmpItemKindFolder"]        = { fg = c['fg'],  bg = 'NONE' },
		["CmpItemKindColor"]         = { fg = c['fg'],  bg = 'NONE' },
		["CmpItemKindReference"]     = { fg = c['fg'],  bg = 'NONE' },
		["CmpItemKindOperator"]      = { fg = c['fg'],  bg = 'NONE' },
		["CmpItemKindTypeParameter"] = { fg = c['red'], bg = 'NONE' },
	}
end

return M
