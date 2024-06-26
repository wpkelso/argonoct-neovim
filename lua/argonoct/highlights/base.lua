local palette = require('argonoct.palette')

local M = {}

M.groups = function()
    local c = palette.palette()

    --- @type table<string, vim.api.keyset.highlight>
    return {
        --#region Access to colors

        ["Red"]         = { fg = c['red'] },
        ["Orange"]      = { fg = c['org'] },
        ["Yellow"]      = { fg = c['ylw'] },
        ["YellowGreen"] = { fg = c['ygn'] },
        ["Green"]       = { fg = c['grn'] },
        ["Cyan"]        = { fg = c['cyn'] },
        ["LightBlue"]   = { fg = c['lbl'] },
        ["Blue"]        = { fg = c['blu'] },
        ["Purple"]      = { fg = c['pur'] },
        ["Magenta"]     = { fg = c['mag'] },

        --#region Begin syntax

        ["Normal"]     = { fg = c['fg'], bg = c['bg']                   },
        ["NormalNC"]   = { fg = 'NONE',  bg = 'NONE'                    },
        ["Underlined"] = { fg = 'NONE',  bg = 'NONE', underline  = true },
        ["Bold"]       = { fg = 'NONE',  bg = 'NONE', bold       = true },
        ["Italic"]     = { fg = 'NONE',  bg = 'NONE', italic     = true },

        ["SpellBad"]   = { fg = c['red'], bg = 'NONE', underline = true },
        ["SpellCap"]   = { fg = c['red'], bg = 'NONE', underline = true },
        ["SpellLocal"] = { fg = c['red'], bg = 'NONE', underline = true },
        ["SpellRare"]  = { fg = c['red'], bg = 'NONE', underline = true },

        ["NonText"]     = { fg = c['fg'], bg = 'NONE' },
        ["EndOfBuffer"] = { fg = 'NONE',  bg = 'NONE' },

        ["Search"]     = { fg = c['bg'], bg = c['cyn'] },
        ["IncSearch"]  = { fg = c['bg'], bg = c['cyn'] },
        ["Substitute"] = { fg = 'NONE',  bg = c['cyn'] },

        ["DiffAdd"]    = { fg = c['ygn'], bg = 'NONE' },
        ["DiffChange"] = { fg = c['blu'], bg = 'NONE' },
        ["DiffDelete"] = { fg = c['red'], bg = 'NONE' },
        ["DiffText"]   = { fg = c['wht'], bg = 'NONE' },

        --#region Actual text highlighting

        ["Comment"] = { fg = c['cyn'], bg = 'NONE', italic = true, },

        ["Constant"]  = { fg = c['grn'], bg = 'NONE' },
        ["String"]    = { fg = c['lbl'], bg = 'NONE' },
        ["Character"] = { fg = c['lbl'], bg = 'NONE' },
        ["Number"]    = { fg = c['red'], bg = 'NONE' },
        ["Boolean"]   = { link = 'Number' },
        ["Float"]     = { link = 'Number' },

        ["Identifier"] = { fg = c['blu'], bg = 'NONE' },
        ["Function"]   = { fg = c['ylw'], bg = 'NONE' },

        ["Statement"]   = { fg   = 'NONE', bg = 'NONE' },
        ["Conditional"] = { link = 'Keyword' },
        ["Repeat"]      = { link = 'Keyword' },
        ["Label"]       = { link = 'Keyword' },
        ["Operator"]    = { fg   = c['wht'], bg = 'NONE' },
        ["Keyword"]     = { fg   = c['wht'], bg = 'NONE' },
        ["Exception"]   = { link = 'Keyword' },

        ["PreProc"]   = { fg = c['wht'], bg = 'NONE' },
        ["Include"]   = { fg = c['wht'], bg = 'NONE' },
        ["Define"]    = { fg = c['wht'], bg = 'NONE' },
        ["Macro"]     = { fg = c['wht'], bg = 'NONE' },
        ["PreCondit"] = { fg = c['wht'], bg = 'NONE' },

        ["Type"]         = { fg = c['ygn'], bg = 'NONE' },
        ["StorageClass"] = { fg = c['ygn'], bg = 'NONE' },
        ["Structure"]    = { fg = c['ygn'], bg = 'NONE' },
        ["Typedef"]      = { fg = c['ygn'], bg = 'NONE' },

        ["SpecialComment"] = { fg   = c['mag'], bg = 'NONE' },
        ["Special"]        = { fg   = c['mag'], bg = 'NONE' },
        ["SpecialChar"]    = { fg   = c['mag'], bg = 'NONE' },
        ["Tag"]            = { fg   = c['org'], bg = 'NONE' },
        ["Debug"]          = { fg   = c['pur'], bg = 'NONE' },
        ["Delimiter"]      = { link = 'Special' },
        ["Error"]          = { fg   = c['bg'], bg = c['red'], bold = true, },
        ["Todo"]           = { fg   = c['bg'], bg = c['ylw'], bold = true, },

        --#endregion

        ["SignColumn"]     = { fg = 'NONE', bg = 'NONE' },

        ["MsgArea"]        = { fg = 'NONE', bg = c['bg'] },
        ["ModeMsg"]        = { fg = 'NONE', bg = c['bg'] },
        ["MsgSeparator"]   = { fg = 'NONE', bg = c['bg'] },

        -- Pop-up menu
        ["Pmenu"]      = { fg = c['fg'], bg = c['gry'] },
        ["PmenuSel"]   = { fg = c['bg'], bg = c['fg'] },
        ["PmenuSbar"]  = { fg = 'NONE', bg = c['bg'] },
        ["PmenuThumb"] = { fg = 'NONE', bg = c['bg'] },

        ["TabLine"]     = { fg = c['fg'], bg = c['fg'] },
        ["TabLineSel"]  = { fg = c['fg'], bg = c['bg'] },
        ["TabLineFill"] = { fg = c['fg'], bg = c['bg'] },

        ["StatusLine"]       = { fg = c['fg'], bg = c['bg'] },
        ["StatusLineNC"]     = { fg = c['fg'], bg = c['bg'] },
        ["StatusLineTerm"]   = { fg = c['fg'], bg = c['bg'] },
        ["StatusLineTermNC"] = { fg = c['fg'], bg = c['bg'] },

        ["WinBar"]   = { fg = c['fg'], bg = c['bg'] },
        ["WinBarNC"] = { fg = c['fg'], bg = c['bg'] },

        ["WildMenu"]       = { fg = 'NONE', bg = c['cyn'] },
        ["Folded"]         = { fg = c['gry'], bg = c['bg'] },
        ["FoldColumn"]     = { fg = c['gry'], bg = c['bg'] },
        ["LineNr"]         = { fg = c['slv'], bg = 'NONE' },
        ["FloatBorder"]    = { fg = c['gry'], bg = c['bg'] },
        ["Whitespace"]     = { fg = c['slv'], bg = 'NONE' },
        ["WinSeparator"]   = { fg = c['blk'], bg = c['blk'] },
        ["WinSeparatorNC"] = { fg = c['blk'], bg = c['blk'] },
        ["NormalFloat"]    = { fg = c['wht'], bg = c['bg'] },
        ["WarningMsg"]     = { fg = c['ylw'], bg = c['bg'] },
        ["QuickFixLine"]   = { fg = 'NONE', bg = c['blu'] },

        -- The MatchWord groups don't actually exist, but we define them here
        -- to link to them in plugin specific files instead of redefining the
        -- same group multiple times
        ["MatchWord"]      = { fg = 'NONE', bg = c['slv'] },
        ["MatchParen"]     = { fg = 'NONE', bg = c['slv'] },
        ["MatchWordCur"]   = { fg = 'NONE', bg = 'NONE' },
        ["MatchParenCur"]  = { fg = 'NONE', bg = 'NONE' },

        ["Conceal"]   = { fg = 'NONE', bg = 'NONE' },
        ["Directory"] = { fg = c['blu'], bg = 'NONE' },

        ["SpecialKey"] = { fg = c['blu'], bg = 'NONE', bold = true, },
        ["Title"]      = { fg = c['blu'], bg = 'NONE', bold = true, },
        ["ErrorMsg"]   = { fg = c['red'], bg = 'NONE', bold = true, },
        ["MoreMsg"]    = { fg = c['ylw'], bg = 'NONE' },
        ["Question"]   = { fg = c['ylw'], bg = 'NONE' },

        -- Cursor and selection related
        ["Cursor"]       = { fg = c['fg'], bg = 'NONE' },
        ["lCursor"]      = { fg = c['fg'], bg = c['bg'] },
        ["CursorLine"]   = { fg = 'NONE',  bg = c['bg'] },
        ["CursorLineNr"] = { fg = c['fg'], bg = 'NONE', bold = true, },
        ["CursorColumn"] = { fg = 'NONE',  bg = c['bg'] },
        ["ColorColumn"]  = { fg = 'NONE',  bg = c['fg'] },
        ["CursorIM"]     = { fg = c['bg'], bg = c['fg'] },
        ["TermCursor"]   = { fg = c['bg'], bg = c['fg'] },
        ["TermCursorNC"] = { fg = c['bg'], bg = c['fg'] },
        ["Visual"]       = { fg = 'NONE',  bg = c['gry'] },
        ["VisualNOS"]    = { fg = 'NONE',  bg = c['gry'] },
    }
end

return M
