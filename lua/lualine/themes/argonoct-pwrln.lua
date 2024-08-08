local palette = require('argonoct.palette')

local c = palette.palette()

return {
    normal = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['bg'] },
        c = { fg = c['fg'], bg = c['bg'] }
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
        a = { fg = c['bg'], bg = c['lbl'], gui = 'bold' },
        b = { fg = c['bg'], bg = c['blu'] },
        c = { fg = c['bg'], bg = c['blu'] }
    },
    inactive = {
        a = { fg = c['gry'], bg = c['bg'], gui = 'bold' },
        b = { fg = c['gry'], bg = c['bg'] },
        c = { fg = c['gry'], bg = c['bg'] }
    }
}
