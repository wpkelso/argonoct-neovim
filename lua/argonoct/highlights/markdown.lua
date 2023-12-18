local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["markdownBlockquote"]         = { fg = c['grn'], bg = 'NONE' },
		["markdownCode"]               = { fg = c['org'], bg = 'NONE' },
		["markdownCodeBlock"]          = { fg = c['org'], bg = 'NONE' },
		["markdownCodeDelimiter"]      = { fg = c['org'], bg = 'NONE' },
		["markdownH1"]                 = { fg = c['blu'], bg = 'NONE' },
		["markdownH2"]                 = { fg = c['blu'], bg = 'NONE' },
		["markdownH3"]                 = { fg = c['blu'], bg = 'NONE' },
		["markdownH4"]                 = { fg = c['blu'], bg = 'NONE' },
		["markdownH5"]                 = { fg = c['blu'], bg = 'NONE' },
		["markdownH6"]                 = { fg = c['blu'], bg = 'NONE' },
		["markdownHeadingDelimiter"]   = { fg = c['blu'], bg = 'NONE' },
		["markdownHeadingRule"]        = { fg = c['fg'],  bg = 'NONE', bold      = true, },
		["markdownId"]                 = { fg = c['pur'], bg = 'NONE' },
		["markdownIdDeclaration"]      = { fg = c['blu'], bg = 'NONE' },
		["markdownIdDelimiter"]        = { fg = c['slv'], bg = 'NONE' },
		["markdownLinkDelimiter"]      = { fg = c['slv'], bg = 'NONE' },
		["markdownBold"]               = { fg = c['blu'], bg = 'NONE', bold      = true, },
		["markdownItalic"]             = { fg = 'NONE',   bg = 'NONE', italic    = true, },
		["markdownBoldItalic"]         = { fg = c['ylw'], bg = 'NONE', bold      = true, italic = true, },
		["markdownListMarker"]         = { fg = c['blu'], bg = 'NONE' },
		["markdownOrderedListMarker"]  = { fg = c['blu'], bg = 'NONE' },
		["markdownRule"]               = { fg = c['mag'], bg = 'NONE' },
		["markdownUrl"]                = { fg = c['cyn'], bg = 'NONE', underline = true, },
		["markdownLinkText"]           = { fg = c['blu'], bg = 'NONE' },
		["markdownFootnote"]           = { fg = c['org'], bg = 'NONE' },
		["markdownFootnoteDefinition"] = { fg = c['org'], bg = 'NONE' },
		["markdownEscape"]             = { fg = c['ylw'], bg = 'NONE' },
	}
end

return M
