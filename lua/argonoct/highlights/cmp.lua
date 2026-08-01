local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["CmpItemAbbrDeprecated"]    = { fg = c['gry'], bg = c['bg'], strikethrough = true, },
		["CmpItemAbbrMatch"]         = { fg = c['fg'], bg = c['bg'] },
		["CmpItemAbbrMatchFuzzy"]    = { fg = c['fg'], bg = c['bg'] },
		["CmpItemKindFunction"]      = { fg = c['org'], bg = c['bg'] },
		["CmpItemKindMethod"]        = { fg = c['org'], bg = c['bg'] },
		["CmpItemKindConstructor"]   = { fg = c['org'], bg = c['bg'] },
		["CmpItemKindClass"]         = { fg = c['pur'], bg = c['bg'] },
		["CmpItemKindEnum"]          = { fg = c['pur'], bg = c['bg'] },
		["CmpItemKindEvent"]         = { fg = c['pur'], bg = c['bg'] },
		["CmpItemKindInterface"]     = { fg = c['pur'], bg = c['bg'] },
		["CmpItemKindStruct"]        = { fg = c['pur'], bg = c['bg'] },
		["CmpItemKindVariable"]      = { fg = c['blu'], bg = c['bg'] },
		["CmpItemKindField"]         = { fg = c['blu'], bg = c['bg'] },
		["CmpItemKindProperty"]      = { fg = c['blu'], bg = c['bg'] },
		["CmpItemKindEnumMember"]    = { fg = c['fg'], bg = c['bg'] },
		["CmpItemKindConstant"]      = { fg = c['fg'], bg = c['bg'] },
		["CmpItemKindKeyword"]       = { fg = c['fg'], bg = c['bg'] },
		["CmpItemKindModule"]        = { fg = c['fg'], bg = c['bg'] },
		["CmpItemKindValue"]         = { fg = c['fg'],  bg = c['bg'] },
		["CmpItemKindUnit"]          = { fg = c['fg'],  bg = c['bg'] },
		["CmpItemKindText"]          = { fg = c['fg'],  bg = c['bg'] },
		["CmpItemKindSnippet"]       = { fg = c['fg'], bg = c['bg'] },
		["CmpItemKindFile"]          = { fg = c['fg'],  bg = c['bg'] },
		["CmpItemKindFolder"]        = { fg = c['fg'],  bg = c['bg'] },
		["CmpItemKindColor"]         = { fg = c['fg'],  bg = c['bg'] },
		["CmpItemKindReference"]     = { fg = c['fg'],  bg = c['bg'] },
		["CmpItemKindOperator"]      = { fg = c['fg'],  bg = c['bg'] },
		["CmpItemKindTypeParameter"] = { fg = c['fg'], bg = c['bg'] },
	}
end

return M
