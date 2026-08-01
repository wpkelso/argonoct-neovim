local palette = require('argonoct.palette')

local M = {}

M.groups = function()
	local c = palette.palette()

	--- @type table<string, vim.api.keyset.highlight>
	return {
        ["@macro"] = { link = 'Macro' },
        ["@lsp.type.macro"] = { link = '@macro' },

        ["@type"] = { link = 'Type' },
        ["@lsp.type.class"]                 = { link = '@type' },
        ["@lsp.typemod.class.declaration"]  = { fg = c['pur'], bg = 'NONE' },
        ["@lsp.typemod.class.definition"]   = { link = '@lsp.typemod.class.defintion' },

        ["@variable"] = { link = 'Identifier' },
        ["@lsp.type.variable"]                  = { link = '@variable' },
        ["@lsp.typemod.variable.declaration"]   = { fg = c['blu'], bg = 'NONE' },
        ["@lsp.typemod.variable.definition"]    = { link = '@lsp.typemod.variable.declaration'},
	}
end

return M
