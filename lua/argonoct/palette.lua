local config = require('argonoct.config')

local M = {}

local variants = {
	dark = {
		_name       = 'dark',
		background  = 'dark',

        --#region UI Colors
		['bg']      = '#0E1019',
        ['mg']      = '#5A5A5A',
        ['fg']      = '#FFFAF4',

        --#region Colors
        ['blk']     = '#0E1019',
        ['gry']     = '#232323',
        ['slv']     = '#5A5A5A',
        ['wht']     = '#FFFAF4',
        ['red']     = '#FF000F',
        ['pur']     = '#9A5FEB',
        ['mag']     = '#E67BF7',
        ['blu']     = '#0092FF',
        ['lbl']     = '#4DBCff',
        ['cyn']     = '#00D8EB',
        ['grn']     = '#0EB75B',
        ['ygn']     = '#8CE10B',
        ['ylw']     = '#FFB900',
        ['org']     = '#F87810',

        --#region Translucent Colors (25% Color)
        ['tred'] = '#870814',
        ['tgrn'] = '#0E643A',
        ['tblu'] = '#07518C',
        ['tcyn'] = '#0B424E',
    },
	light = {
		_name       = 'light',
		background  = 'light',

        --#region UI Colors
		['bg']      = '#FFFAF4',
        ['mg']      = '#5A5A5A',
        ['fg']      = '#0E1019',

        --#region Colors
        ['blk']     = '#232323',
        ['gry']     = '#5A5A5A',
        ['slv']     = '#FFFAF4',
        ['wht']     = '#FFFFFF',
        ['red']     = '#D61F17',
        ['pur']     = '#6D43A6',
        ['mag']     = '#8951D6',
        ['blu']     = '#056DBC',
        ['lbl']     = '#0283E5',
        ['cyn']     = '#02ADBD',
        ['grn']     = '#4C7E00',
        ['ygn']     = '#81CC0F',
        ['ylw']     = '#C88600',
        ['org']     = '#ECAE0A',

        --#region Transparent Colors
        ['tred'] = '#F5C3BD',
        ['tgrn'] = '#D2DBB7',
        ['tblu'] = '#C1D7E6',
        ['tcyn'] = '#C0E7E6',
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
