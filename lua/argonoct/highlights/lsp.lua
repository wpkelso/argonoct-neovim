local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["DiagnosticError"]                      = { fg = c['red'], bg = 'NONE' }, -- inline msg
		["DiagnosticWarn"]                       = { fg = c['ylw'], bg = 'NONE' }, -- inline msg
		["DiagnosticInfo"]                       = { fg = c['wht'], bg = 'NONE' }, -- inline msg
		["DiagnosticHint"]                       = { fg = c['slv'], bg = 'NONE' }, -- inline msg

        ["DiagnosticSignError"]                  = { fg = c['red'], bg = 'NONE', bold = true }, -- gutter message
		["DiagnosticSignWarn"]                   = { fg = c['ylw'], bg = 'NONE', bold = true }, -- gutter message
		["DiagnosticSignInfo"]                   = { fg = c['wht'], bg = 'NONE', bold = true }, -- gutter message
		["DiagnosticSignHint"]                   = { fg = c['slv'], bg = 'NONE', bold = true }, -- gutter message

		["LspDiagnosticsDefaultError"]           = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsDefaultWarning"]         = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsDefaultInfo"]            = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsDefaultHint"]            = { fg = c['blu'], bg = 'NONE' },

		["LspDiagnosticsVirtualTextError"]       = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextWarning"]     = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextInfo"]        = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextHint"]        = { fg = c['blu'], bg = 'NONE' },

		["LspDiagnosticsFloatingError"]          = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsFloatingWarning"]        = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsFloatingInfo"]           = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsFloatingHint"]           = { fg = c['blu'], bg = 'NONE' },

		["LspDiagnosticsSignError"]              = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsSignWarning"]            = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsSignInfo"]               = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsSignHint"]               = { fg = c['blu'], bg = 'NONE' },

		["LspDiagnosticsError"]                  = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsWarning"]                = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsInfo"]                   = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsHint"]                   = { fg = c['blu'], bg = 'NONE' },

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
