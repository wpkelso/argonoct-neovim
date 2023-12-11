local config = require('argonoct.config')

local M = {}

---Load the Argonoct colorscheme
---@param opts ArgonoctOptions
M.colorscheme = function(opts)
	config.extend(opts)

	vim.o.termguicolors = true

	if vim.g.colors_name then
		vim.cmd('hi clear')
		vim.cmd('syntax reset')
	end

	vim.g.colors_name = 'argonoct'

	require('argonoct.theme').set_highlights(opts)
end

---Set up the Argonoct colorscheme
---@param opts ArgonoctOptions
M.setup = function (opts)
	config.extend(opts)
end

return M
