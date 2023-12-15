local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["TSComment"]            = { link = 'Comment' },
		["TSAnnotation"]         = { fg   = c['ygn'], bg = 'NONE' },
		["TSAttribute"]          = { link = 'Constant' },
		["TSConstructor"]        = { link = 'TSMethod' },
		["TSType"]               = { fg   = c['ygn'], bg = 'NONE' },
		["TSTypeBuiltin"]        = { link = 'TSType' },
		["TSConditional"]        = { link = 'Conditional' },
		["TSException"]          = { link = 'Exception' },
		["TSInclude"]            = { link = 'Include' },
		["TSKeywordReturn"]      = { link = 'Keyword' },
		["TSKeyword"]            = { link = 'Keyword' },
		["TSKeywordFunction"]    = { link = 'Keyword' },
		["TSLabel"]              = { fg   = c['lbl'], bg = 'NONE' },
		["TSNamespace"]          = { fg   = c['cyn'], bg = 'NONE' },
		["TSRepeat"]             = { link = 'Repeat' },
		["TSConstant"]           = { link = 'Constant' },
		["TSConstBuiltin"]       = { link = 'Constant' },
		["TSFloat"]              = { link = 'Float' },
		["TSNumber"]             = { link = 'Number' },
		["TSBoolean"]            = { link = 'Boolean' },
		["TSCharacter"]          = { link = 'Character' },
		["TSError"]              = { link = 'Error' },
		["TSFunction"]           = { link = 'Function' },
		["TSFuncBuiltin"]        = { fg   = c['ylw'], bg = 'NONE' },
		["TSMethod"]             = { fg   = c['pur'], bg = 'NONE' },
		["TSConstMacro"]         = { fg   = c['org'], bg = 'NONE' },
		["TSFuncMacro"]          = { fg   = c['blu'], bg = 'NONE' },
		["TSVariable"]           = { fg   = c['blu'], bg = 'NONE' },
		["TSVariableBuiltin"]    = { fg   = c['blu'], bg = 'NONE' },
		["TSProperty"]           = { link = 'TSAnnotation' },
		["TSField"]              = { fg   = c['wht'], bg = 'NONE' },
		["TSParameter"]          = { fg   = c['blu'], bg = 'NONE' },
		["TSParameterReference"] = { link = 'TSParameter' },
		["TSSymbol"]             = { fg   = c['lbl'], bg = 'NONE' },
		["TSText"]               = { fg   = c['wht'], bg = 'NONE' },
		["TSOperator"]           = { fg   = c['wht'], bg = 'NONE' },
		["TSPunctDelimiter"]     = { fg   = c['wht'], bg = 'NONE' },
		["TSTagDelimiter"]       = { fg   = c['wht'], bg = 'NONE' },
		["TSTagAttribute"]       = { link = 'TSTag' },
		["TSPunctBracket"]       = { fg   = c['wht'], bg = 'NONE' },
		["TSPunctSpecial"]       = { fg   = c['wht'], bg = 'NONE' },
		["TSString"]             = { link = 'String' },
		["TSStringRegex"]        = { link = 'String' },
		["TSStringEscape"]       = { link = 'String' },
		["TSTag"]                = { fg   = c['org'], bg = 'NONE' },
		["TSEmphasis"]           = { fg   = 'NONE', bg   = 'NONE', italic    = true, },
		["TSUnderline"]          = { fg   = 'NONE', bg   = 'NONE', underline = true, },
		["TSTitle"]              = { fg   = c['wht'], bg = 'NONE', },
		["TSLiteral"]            = { fg   = c['org'], bg = 'NONE' },
		["TSURI"]                = { fg   = c['org'], bg = 'NONE', underline = true, },
		["TSKeywordOperator"]    = { link = 'Keyword' },
		["TSStructure"]          = { fg   = c['lbl'], bg = 'NONE' },
		["TSStrong"]             = { fg   = c['blu'], bg = 'NONE', bold      = true, },
		["TSQueryLinterError"]   = { fg   = c['org'], bg = 'NONE' },
		["TreesitterContext"]    = { fg   = 'NONE', bg   = c.tree_gray },
	}
end

return M
