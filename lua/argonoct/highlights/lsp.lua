local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
		["LspDiagnosticsDefaultError"]           = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsDefaultWarning"]         = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsDefaultInformation"]     = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsDefaultInfo"]            = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsDefaultHint"]            = { fg = c['blu'], bg = 'NONE' },

		["LspDiagnosticsVirtualTextError"]       = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextWarning"]     = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextInformation"] = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextInfo"]        = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsVirtualTextHint"]        = { fg = c['blu'], bg = 'NONE' },

		["LspDiagnosticsFloatingError"]          = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsFloatingWarning"]        = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsFloatingInformation"]    = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsFloatingInfo"]           = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsFloatingHint"]           = { fg = c['blu'], bg = 'NONE' },

		["DiagnosticError"]                      = { fg = c['blu'], bg = 'NONE' },
		["DiagnosticWarning"]                    = { fg = c['blu'], bg = 'NONE' },
		["DiagnosticInformation"]                = { fg = c['blu'], bg = 'NONE' },
		["DiagnosticInfo"]                       = { fg = c['blu'], bg = 'NONE' },
		["DiagnosticHint"]                       = { fg = c['blu'], bg = 'NONE' },

        ["DiagnosticSignError"]                  = { fg = c['blu'], bg = 'NONE' },
		["DiagnosticSignWarning"]                = { fg = c['blu'], bg = 'NONE' },
		["DiagnosticSignInformation"]            = { fg = c['blu'], bg = 'NONE' },
		["DiagnosticSignInfo"]                   = { fg = c['blu'], bg = 'NONE' },
		["DiagnosticSignHint"]                   = { fg = c['blu'], bg = 'NONE' },

		["LspDiagnosticsSignError"]              = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsSignWarning"]            = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsSignInformation"]        = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsSignInfo"]               = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsSignHint"]               = { fg = c['blu'], bg = 'NONE' },

		["LspDiagnosticsError"]                  = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsWarning"]                = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsInformation"]            = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsInfo"]                   = { fg = c['blu'], bg = 'NONE' },
		["LspDiagnosticsHint"]                   = { fg = c['blu'], bg = 'NONE' },

		["LspDiagnosticsUnderlineError"]         = { fg = 'NONE', bg = 'NONE', underline = true, },
		["LspDiagnosticsUnderlineWarning"]       = { fg = 'NONE', bg = 'NONE', underline = true, },
		["LspDiagnosticsUnderlineInformation"]   = { fg = 'NONE', bg = 'NONE', underline = true, },
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
