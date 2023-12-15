local M = {}

M.groups = function ()

	-- This could be done dynamically by looking for all files, but this approach is fine and is safer
	local modules = {
		require('argonoct.highlights.base').groups(),
		-- require('argonoct.highlights.mini-nvim').groups(),
		-- require('argonoct.highlights.flash-nvim').groups(),
		-- require('argonoct.highlights.neotree').groups(),
		-- require('argonoct.highlights.buffer').groups(),
		-- require('argonoct.highlights.cmp').groups(),
		-- require('argonoct.highlights.dashboard').groups(),
		require('argonoct.highlights.git').groups(),
		-- require('argonoct.highlights.indent-blank-line').groups(),
		require('argonoct.highlights.lsp').groups(),
		-- require('argonoct.highlights.markdown').groups(),
		-- require('argonoct.highlights.nvimtree').groups(),
		-- require('argonoct.highlights.telescope').groups(),
		require('argonoct.highlights.treesitter').groups(),
		require('argonoct.highlights.whichkey').groups(),
	}

	--- @type table<string, vim.api.keyset.highlight>
	local result = {}

	-- Just takes the list of "modules" from above and combines them all into a single table/array
	for _, groups in pairs(modules) do
		for highlightGroup, group in pairs(groups) do
			result[highlightGroup] = group
		end
	end

	return result
end

return M
