local highlights = require('argonoct.highlights')

local hl = vim.api.nvim_set_hl

local M = {}

---@param opts ArgonoctOptions
M.set_highlights = function(opts)

	local highlight_groups = highlights.groups()

	-- Set users highlight_group customisations.
	if not opts.highlight_groups == nil then
		for group, highlight in pairs(opts.highlight_groups) do
			highlight_groups[group] = highlight
		end
	end

	for group, highlight in pairs(highlight_groups) do
		hl(0, group, highlight)
	end
end

return M
