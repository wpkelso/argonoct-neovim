local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["TSComment"]            = { link = 'Comment' },
		["TSAnnotation"]         = { link = 'SpecialComment' },
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
		["TSConstMacro"]         = { link = 'Function' },
		["TSFuncMacro"]          = { link = 'Function' },
		["TSVariable"]           = { link = '@variable' },
		["TSVariableBuiltin"]    = { link = '@variable' },
		["TSProperty"]           = { link = 'Normal' },
		["TSField"]              = { link = 'Normal' },
		["TSParameter"]          = { link = 'Label' },
		["TSParameterReference"] = { link = 'TSParameter' },
		["TSSymbol"]             = { link = 'Normal' },
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
