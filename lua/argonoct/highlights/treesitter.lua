local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["TSComment"]            = { link = 'Comment' },
		["TSAnnotation"]         = { fg   = c['ygn'], bg = 'NONE' },
		["TSAttribute"]          = { fg   = c['grn'], bg = 'NONE' },
		["TSConstructor"]        = { fg   = c['ylw'], bg = 'NONE' },
		["TSType"]               = { fg   = c['ygn'], bg = 'NONE' },
		["TSTypeBuiltin"]        = { fg   = c['ygn'], bg = 'NONE' },
		["TSConditional"]        = { fg   = c['wht'], bg = 'NONE' },
		["TSException"]          = { fg   = c['wht'], bg = 'NONE' },
		["TSInclude"]            = { fg   = c['wht'], bg = 'NONE' },
		["TSKeywordReturn"]      = { fg   = c['wht'], bg = 'NONE' },
		["TSKeyword"]            = { fg   = c['wht'], bg = 'NONE' },
		["TSKeywordFunction"]    = { fg   = c['wht'], bg = 'NONE' },
		["TSLabel"]              = { fg   = c['lbl'],     bg = 'NONE' }, --TODO Continue fixing this
		["TSNamespace"]          = { fg   = c['cyn'],           bg = 'NONE' },
		["TSRepeat"]             = { fg   = c['ylw'],         bg = 'NONE' },
		["TSConstant"]           = { fg   = c['org'],         bg = 'NONE' },
		["TSConstBuiltin"]       = { fg   = c['org'],         bg = 'NONE' },
		["TSFloat"]              = { fg   = c['org'],         bg = 'NONE' },
		["TSNumber"]             = { fg   = c['org'],         bg = 'NONE' },
		["TSBoolean"]            = { fg   = c['org'],         bg = 'NONE' },
		["TSCharacter"]          = { fg   = c['ygn'],          bg = 'NONE' },
		["TSError"]              = { fg   = c.error_red,      bg = 'NONE' },
		["TSFunction"]           = { fg   = c['blu'],           bg = 'NONE' },
		["TSFuncBuiltin"]        = { fg   = c['blu'],           bg = 'NONE' },
		["TSMethod"]             = { fg   = c['blu'],           bg = 'NONE' },
		["TSConstMacro"]         = { fg   = c['org'],         bg = 'NONE' },
		["TSFuncMacro"]          = { fg   = c['blu'],           bg = 'NONE' },
		["TSVariable"]           = { fg   = c['lbl'],     bg = 'NONE' },
		["TSVariableBuiltin"]    = { fg   = c['red'],            bg = 'NONE' },
		["TSProperty"]           = { fg   = c['red'],            bg = 'NONE' },
		["TSField"]              = { fg   = c['fg'],             bg = 'NONE' },
		["TSParameter"]          = { fg   = c['red'],            bg = 'NONE' },
		["TSParameterReference"] = { fg   = c['red'],            bg = 'NONE' },
		["TSSymbol"]             = { fg   = c['lbl'],     bg = 'NONE' },
		["TSText"]               = { fg   = c['fg'],         bg = 'NONE' },
		["TSOperator"]           = { fg   = c['fg'],         bg = 'NONE' },
		["TSPunctDelimiter"]     = { fg   = c['fg'],         bg = 'NONE' },
		["TSTagDelimiter"]       = { fg   = c['fg'],         bg = 'NONE' },
		["TSTagAttribute"]       = { fg   = c['org'],         bg = 'NONE' },
		["TSPunctBracket"]       = { fg   = c['fg'],         bg = 'NONE' },
		["TSPunctSpecial"]       = { fg   = c['pur'],         bg = 'NONE' },
		["TSString"]             = { fg   = c['ygn'],          bg = 'NONE' },
		["TSStringRegex"]        = { fg   = c['ygn'],          bg = 'NONE' },
		["TSStringEscape"]       = { fg   = c['ygn'],          bg = 'NONE' },
		["TSTag"]                = { fg   = c['blu'],           bg = 'NONE' },
		["TSEmphasis"]           = { fg   = 'NONE',           bg = 'NONE', italic    = true,    },
		["TSUnderline"]          = { fg   = 'NONE',           bg = 'NONE', underline = true, },
		["TSTitle"]              = { fg   = c['fg'],             bg = 'NONE', },
		["TSLiteral"]            = { fg   = c['org'],         bg = 'NONE' },
		["TSURI"]                = { fg   = c['org'],         bg = 'NONE', underline = true, },
		["TSKeywordOperator"]    = { fg   = c['pur'],         bg = 'NONE' },
		["TSStructure"]          = { fg   = c['lbl'],     bg = 'NONE' },
		["TSStrong"]             = { fg   = c['blu'],           bg = 'NONE', bold      = true,      },
		["TSQueryLinterError"]   = { fg   = c.warning_orange, bg = 'NONE' },
		["TreesitterContext"]    = { fg   = 'NONE',           bg = c.tree_gray },
	}
end

return M
