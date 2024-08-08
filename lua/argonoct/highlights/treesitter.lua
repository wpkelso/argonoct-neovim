local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["TSComment"]            = { link = 'Comment' },
		["TSAnnotation"]         = { link = 'Type' },
		["TSAttribute"]          = { link = 'Constant' },
		["TSConstructor"]        = { link = 'Function' },
		["TSType"]               = { link = 'Type' },
		["TSTypeBuiltin"]        = { link = 'Type' },
		["TSConditional"]        = { link = 'Conditional' },
		["TSException"]          = { link = 'Exception' },
		["TSInclude"]            = { link = 'Include' },
		["TSKeywordReturn"]      = { link = 'Keyword' },
		["TSKeyword"]            = { link = 'Keyword' },
		["TSKeywordFunction"]    = { link = 'Keyword' },
		["TSLabel"]              = { link = 'Label' },
		["TSNamespace"]          = { link = 'Normal' },
		["TSRepeat"]             = { link = 'Repeat' },
		["TSConstant"]           = { link = 'Constant' },
		["TSConstBuiltin"]       = { link = 'Constant' },
		["TSFloat"]              = { link = 'Float' },
		["TSNumber"]             = { link = 'Number' },
		["TSBoolean"]            = { link = 'Boolean' },
		["TSCharacter"]          = { link = 'Character' },
		["TSError"]              = { link = 'Error' },
		["TSFunction"]           = { link = 'Function' },
		["TSFuncBuiltin"]        = { link = 'Function' },
		["TSMethod"]             = { link = 'Function' },
		["TSConstMacro"]         = { fg   = c['org'], bg = 'NONE' },
		["TSFuncMacro"]          = { fg   = c['blu'], bg = 'NONE' },
		["TSVariable"]           = { fg   = c['blu'], bg = 'NONE' },
		["TSVariableBuiltin"]    = { fg   = c['blu'], bg = 'NONE' },
		["TSProperty"]           = { link = 'TSAnnotation' },
		["TSField"]              = { link = 'Normal' },
		["TSParameter"]          = { fg   = c['blu'], bg = 'NONE' },
		["TSParameterReference"] = { link = 'TSParameter' },
		["TSSymbol"]             = { link = 'String' },
		["TSText"]               = { link = 'Normal' },
		["TSOperator"]           = { link = 'Normal' },
		["TSPunctDelimiter"]     = { link = 'Delimiter' },
		["TSTagDelimiter"]       = { link = 'Delimiter' },
		["TSTagAttribute"]       = { link = 'Tag' },
		["TSPunctBracket"]       = { link = 'Delimiter' },
		["TSPunctSpecial"]       = { link = 'Special' },
		["TSString"]             = { link = 'String' },
		["TSStringRegex"]        = { link = 'String' },
		["TSStringEscape"]       = { link = 'String' },
		["TSTag"]                = { link = 'Tag' },
		["TSEmphasis"]           = { fg   = 'NONE', bg   = 'NONE', italic    = true, },
		["TSUnderline"]          = { fg   = 'NONE', bg   = 'NONE', underline = true, },
		["TSTitle"]              = { link = 'Title' },
		["TSLiteral"]            = { link = 'Constant' },
		["TSURI"]                = { fg   = c['org'], bg = 'NONE', underline = true, },
		["TSKeywordOperator"]    = { link = 'Keyword' },
		["TSStructure"]          = { fg   = c['lbl'], bg = 'NONE' },
		["TSStrong"]             = { fg   = 'NONE', bg = 'NONE', bold      = true, },
		["TSQueryLinterError"]   = { fg   = c['org'], bg = 'NONE' },
		["TreesitterContext"]    = { fg   = 'NONE', bg   = c['gry'] },
	}
end

return M
