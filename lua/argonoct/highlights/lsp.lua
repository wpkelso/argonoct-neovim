local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["DiagnosticError"]                      = { fg = c['red'], bg = 'NONE' }, -- inline msg
		["DiagnosticWarn"]                       = { fg = c['ylw'], bg = 'NONE' }, -- inline msg
		["DiagnosticInfo"]                       = { fg = c['fg'], bg = 'NONE' }, -- inline msg
		["DiagnosticHint"]                       = { fg = c['mg'], bg = 'NONE' }, -- inline msg

        ["DiagnosticSignError"]                  = { fg = c['red'], bg = 'NONE', bold = true }, -- gutter message
		["DiagnosticSignWarn"]                   = { fg = c['ylw'], bg = 'NONE', bold = true }, -- gutter message
		["DiagnosticSignInfo"]                   = { fg = c['fg'], bg = 'NONE', bold = true }, -- gutter message
		["DiagnosticSignHint"]                   = { fg = c['mg'], bg = 'NONE', bold = true }, -- gutter message

        ["DiagnosticUnderlineError"]            = { sp = c['red'], underline = true},
        ["DiagnosticUnderlineWarn"]             = { sp = c['ylw'], underline = true},

		["LspDiagnosticsDefaultError"]           = { fg = c['red'], bg = 'NONE' },
		["LspDiagnosticsDefaultWarning"]         = { fg = c['ylw'], bg = 'NONE' },
		["LspDiagnosticsDefaultInfo"]            = { fg = c['fg'], bg = 'NONE' },
		["LspDiagnosticsDefaultHint"]            = { fg = c['mg'], bg = 'NONE' },

		["LspDiagnosticsVirtualTextError"]       = { fg = c['red'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextWarning"]     = { fg = c['ylw'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextInfo"]        = { fg = c['fg'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextHint"]        = { fg = c['mg'], bg = 'NONE' },

		["LspDiagnosticsFloatingError"]          = { fg = c['red'], bg = 'NONE' },
		["LspDiagnosticsFloatingWarning"]        = { fg = c['ylw'], bg = 'NONE' },
		["LspDiagnosticsFloatingInfo"]           = { fg = c['fg'], bg = 'NONE' },
		["LspDiagnosticsFloatingHint"]           = { fg = c['mg'], bg = 'NONE' },

		["LspDiagnosticsSignError"]              = { fg = c['red'], bg = 'NONE' },
		["LspDiagnosticsSignWarning"]            = { fg = c['ylw'], bg = 'NONE' },
		["LspDiagnosticsSignInfo"]               = { fg = c['fg'], bg = 'NONE' },
		["LspDiagnosticsSignHint"]               = { fg = c['mg'], bg = 'NONE' },

		["LspDiagnosticsError"]                  = { fg = c['red'], bg = 'NONE' },
		["LspDiagnosticsWarning"]                = { fg = c['ylw'], bg = 'NONE' },
		["LspDiagnosticsInfo"]                   = { fg = c['fg'], bg = 'NONE' },
		["LspDiagnosticsHint"]                   = { fg = c['mg'], bg = 'NONE' },

		["LspDiagnosticsUnderlineError"]         = { fg = 'NONE', bg = 'NONE', underline = true, },
		["LspDiagnosticsUnderlineWarn"]          = { fg = 'NONE', bg = 'NONE', underline = true, },
		["LspDiagnosticsUnderlineInfo"]          = { fg = 'NONE', bg = 'NONE', underline = true, },
		["LspDiagnosticsUnderlineHint"]          = { fg = 'NONE', bg = 'NONE', underline = true, },

		["LspReferenceRead"]                     = { fg = 'NONE', bg = '#2e303b' },
		["LspReferenceText"]                     = { fg = 'NONE', bg = '#2e303b' },
		["LspReferenceWrite"]                    = { fg = 'NONE', bg = '#2e303b' },

		["LspCodeLens"]                          = { fg = c['fg'], bg = 'NONE', italic = true, },
		["LspCodeLensSeparator"]                 = { fg = c['fg'], bg = 'NONE', italic = true, },
	}
end

return M
