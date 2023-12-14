local palette = require('argonoct.palette')

local c = palette.palette()

return {
    normal = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['gry'] },
        c = { fg = c['fg'], bg = c['gry'] }
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
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['slv'] },
        c = { fg = c['fg'], bg = c['gry'] }
    },
    command = {
        a = { fg = c['bg'], bg = c['lbl'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['gry'] },
        c = { fg = c['fg'], bg = c['gry'] }
    },
    inactive = {
        a = { fg = c['slv'], bg = c['gry'], gui = 'bold' },
        b = { fg = c['slv'], bg = c['gry'] },
        c = { fg = c['slv'], bg = c['gry'] }
    }
}
