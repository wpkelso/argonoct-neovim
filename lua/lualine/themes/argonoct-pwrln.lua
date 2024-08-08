local palette = require('argonoct.palette')

local c = palette.palette()

return {
    normal = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['wht'], bg = c['mg'] },
        c = { fg = c['wht'], bg = c['mg'] }
    },
    insert = {
        a = { fg = c['bg'], bg = c['grn'], gui = 'bold' },
        b = { fg = c['bg'], bg = c['ygn'] },
        c = { fg = c['bg'], bg = c['ygn'] }
    },
    visual = {
        a = { fg = c['bg'], bg = c['org'], gui = 'bold' },
        b = { fg = c['bg'], bg = c['ylw'] },
        c = { fg = c['bg'], bg = c['ylw'] }
    },
    replace = {
        a = { fg = c['bg'], bg = c['mag'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['bg'] },
        c = { fg = c['fg'], bg = c['bg'] }
    },
    command = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['bg'], bg = c['lbl'] },
        c = { fg = c['bg'], bg = c['lbl'] }
    },
    inactive = {
        a = { fg = c['mg'], bg = c['bg'], gui = 'bold' },
        b = { fg = c['mg'], bg = c['bg'] },
        c = { fg = c['mg'], bg = c['bg'] }
    }
}
