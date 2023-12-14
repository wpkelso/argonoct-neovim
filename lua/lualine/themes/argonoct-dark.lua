local palette = require('argonoct.palette')

local c = palette.palette()

return {
    normal = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['slv'] },
        c = { fg = c['fg'], bg = c['gry'] }
    },
    insert = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['slv'] },
        c = { fg = c['fg'], bg = c['gry'] }
    },
    visual = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['slv'] },
        c = { fg = c['fg'], bg = c['gry'] }
    },
    replace = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['slv'] },
        c = { fg = c['fg'], bg = c['gry'] }
    },
    command = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['slv'] },
        c = { fg = c['fg'], bg = c['gry'] }
    },
    inactive = {
        a = { fg = c['bg'], bg = c['blu'], gui = 'bold' },
        b = { fg = c['fg'], bg = c['slv'] },
        c = { fg = c['fg'], bg = c['gry'] }
    }
}
