local config = require('argonoct.config')

local M = {}

local base_colors = {
	['argonoct-dark']       = '#0E1019',
	['argonoct-light']      = '#FFFAF4',

    ['argonoct-black']      = '#232323',
    ['argonoct-grey']       = '#444444',
    ['argonoct-silver']     = '#5A5A5A',
    ['argonoct-white']      = '#FFFFFF',

    -- colors are organized from dark to light
    ['argonoct-red-0']      = '#D61F17',
    ['argonoct-red-1']      = '#EA0715',
    ['argonoct-red-2']      = '#FF000F',
    ['argonoct-red-3']      = '#FF2740',

    ['argonoct-green-0']    = '#4C7E00',
    ['argonoct-green-1']    = '#81CC0F',
    ['argonoct-green-2']    = '#8CE10B',
    ['argonoct-green-3']    = '#ABE15B',

    ['argonoct-yellow-0']   = '#C78600',
    ['argonoct-yellow-1']   = '#ECAE0A',
    ['argonoct-yellow-2']   = '#FFB900',
    ['argonoct-yellow-3']   = '#FFD242',

    ['argonoct-blue-0']     = '#056DBC',
    ['argonoct-blue-1']     = '#0283E5',
    ['argonoct-blue-2']     = '#008DF8',
    ['argonoct-blue-3']     = '#0092FF',

    ['argonoct-purple-0']   = '#6D43A6',
    ['argonoct-purple-1']   = '#8951D6',
    ['argonoct-purple-2']   = '#9A5FEB',

    ['argonoct-cyan-0']     = '#02ADBD',
    ['argonoct-cyan-1']     = '#03D0E2',
    ['argonoct-cyan-2']     = '#00D8EB',
    ['argonoct-cyan-3']     = '#67FFF0',

	}

local variants = {
	dark = {
		_name       = 'dark',
		background  = 'dark',
		['bg']      = base_colors['argonoct-dark'],
        ['fg']      = base_colors['argonoct-light'],
        ['blk']     = base_colors['argonoct-black'],
        ['gry']     = base_colors['argonoct-grey'],
        ['slr']     = base_colors['argonoct-light'],
        ['wht']     = base_colors['argonoct-white'],
        ['red']     = base_colors['argonoct-red-2'],
        ['red-2']   = base_colors['argonoct-red-3'],
        ['grn']     = base_colors['arognoct-green-2'],
        ['grn-2']   = base_colors['argonoct-green-3'],
        ['ylw']     = base_colors['argonoct-yellow-2'],
        ['ylw-2']   = base_colors['argonoct-yellow-3'],
        ['blu']     = base_colors['argonoct-blue-2'],
        ['blu-2']   = base_colors['argonoct-blue-3'],
        ['pur']     = base_colors['argonoct-purple-0'],
        ['pur-2']   = base_colors['argonoct-purple-2'],
        ['cyn']     = base_colors['argonoct-cyan-2'],
        ['cyn-2']   = base_colors['argonoct-cyan-3'],
	},
	light = {
		_name      = 'light',
		background = 'light',
		['bg']      = base_colors['argonoct-light'],
        ['fg']      = base_colors['argonoct-dark'],
        ['blk']     = base_colors['argonoct-black'],
        ['gry']     = base_colors['argonoct-silver'],
        ['slr']     = base_colors['argonoct-white'],
        ['wht']     = base_colors['argonoct-white'],
        ['red']     = base_colors['argonoct-red-0'],
        ['red-2']   = base_colors['argonoct-red-1'],
        ['grn']     = base_colors['arognoct-green-0'],
        ['grn-2']   = base_colors['argonoct-green-1'],
        ['ylw']     = base_colors['argonoct-yellow-0'],
        ['ylw-2']   = base_colors['argonoct-yellow-1'],
        ['blu']     = base_colors['argonoct-blue-0'],
        ['blu-2']   = base_colors['argonoct-blue-1'],
        ['pur']     = base_colors['argonoct-purple-0'],
        ['pur-2']   = base_colors['argonoct-purple-1'],
        ['cyn']     = base_colors['argonoct-cyan-0'],
        ['cyn-2']   = base_colors['argonoct-cyan-1'],
	}
}

M.palette = function ()
	local variant = {}

	if config.options.variant == 'auto' then
		if vim.o.background == 'dark' then
			variant = variants[config.options.dark_variant]
		else
			variant = variants[config.options.light_variant]
		end
	else
		variant = variants[config.options.variant]
		vim.o.background = variant.background
	end

	return variant
end

return M
