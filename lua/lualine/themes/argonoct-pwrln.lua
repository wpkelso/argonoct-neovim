local palette = require('argonoct.palette')

local c = palette.palette()

return {
    normal = {
        a = { fg = c['bg'], bg = c['blu'] },
        b = { fg = c['bg'], bg = c['fg'] },
        c = { fg = c['bg'], bg = c['fg'] }
    },
    insert = {
        a = { fg = c['bg'], bg = c['grn'] },
        b = { fg = c['bg'], bg = c['ygn'] },
        c = { fg = c['bg'], bg = c['ygn'] }
    },
    visual = {
        a = { fg = c['bg'], bg = c['org'] },
        b = { fg = c['bg'], bg = c['ylw'] },
        c = { fg = c['bg'], bg = c['ylw'] }
    },
    replace = {
        a = { fg = c['bg'], bg = c['pur'] },
        b = { fg = c['fg'], bg = c['mag'] },
        c = { fg = c['fg'], bg = c['mag'] }
    },
    command = {
        a = { fg = c['bg'], bg = c['blu'] },
        b = { fg = c['bg'], bg = c['lbl'] },
        c = { fg = c['bg'], bg = c['lbl'] }
    },
    inactive = {
        a = { fg = c['bg'], bg = c['mg'] },
        b = { fg = c['bg'], bg = c['mg'] },
        c = { fg = c['bg'], bg = c['mg'] }
    },
}
