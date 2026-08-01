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

        ["SpellBad"]   = { fg = c['bg'], bg = c['red'], underline = true },
        ["SpellCap"]   = { fg = c['bg'], bg = c['red'], underline = true },
        ["SpellLocal"] = { fg = c['bg'], bg = c['ylw'], underline = true },
        ["SpellRare"]  = { fg = c['bg'], bg = c['ylw'], underline = true },

        ["NonText"]     = { fg = c['fg'], bg = 'NONE' },
        ["EndOfBuffer"] = { fg = 'NONE',  bg = 'NONE' },

        ["Search"]     = { fg = c['bg'],  bg = c['mag'] },
        ["IncSearch"]  = { fg = c['bg'],  bg = c['mag'] },
        ["Substitute"] = { fg = c['bg'],  bg = c['mag'] },

        ["DiffAdd"]    = { fg = c['grn'], bg = c['tgrn'] },
        ["DiffChange"] = { fg = c['blu'], bg = c['tblu'] },
        ["DiffDelete"] = { fg = c['red'], bg = c['tred'] },
        ["DiffText"]   = { fg = c['fg'],  bg = 'NONE' },

        --#region Actual text highlighting

        ["Comment"] = { fg = c['cyn'], bg = c['tcyn'], italic = true, },

        ["Constant"]  = { fg = c['ygn'], bg = 'NONE' },
        ["String"]    = { link = 'Constant' },
        ["Character"] = { link = 'Constant' },
        ["Number"]    = { link = 'Constant' },
        ["Boolean"]   = { link = 'Constant' },
        ["Float"]     = { link = 'Constant' },

        ["Identifier"] = { fg = c['fg'], bg = 'NONE' },
        ["Function"]   = { fg = c['ylw'], bg = 'NONE' },

        ["Statement"]   = { link = 'Normal' },
        ["Conditional"] = { link = 'Normal' },
        ["Repeat"]      = { link = 'Normal' },
        ["Label"]       = { link = 'Normal' },
        ["Operator"]    = { link = 'Normal' },
        ["Keyword"]     = { link = 'Normal' },
        ["Exception"]   = { link = 'Normal' },

        ["PreProc"]     = { fg = c['fg'], bg = 'NONE' },
        ["Include"]     = { fg = c['fg'], bg = 'NONE' },
        ["Define"]      = { fg = c['fg'], bg = 'NONE' },
        ["Macro"]       = { fg = c['fg'], bg = 'NONE' },
        ["PreCondit"]   = { fg = c['fg'], bg = 'NONE' },

        ["Type"]         = { fg = c['fg'], bg = 'NONE' },
        ["StorageClass"] = { link = 'Normal' },
        ["Structure"]    = { link = 'Normal' },
        ["Typedef"]      = { fg = c['pur'], bg = 'NONE' },

        ["SpecialComment"] = { fg   = c['fg'], bg = 'NONE' },
        ["Special"]        = { fg   = c['fg'], bg = 'NONE' },
        ["SpecialChar"]    = { fg   = c['fg'], bg = 'NONE' },
        ["Tag"]            = { fg   = c['fg'], bg = 'NONE' },
        ["Debug"]          = { fg   = c['lbl'], bg = 'NONE' },
        ["Delimiter"]      = { fg   = c['mg'], bg = 'NONE' },
        ["Error"]          = { fg   = c['bg'], bg = c['red'], bold = true, },
        ["Todo"]           = { fg   = c['bg'], bg = c['ylw'], bold = true, },

        --#endregion

        ["SignColumn"]     = { fg = 'NONE', bg = 'NONE' },

        ["MsgArea"]        = { fg = 'NONE', bg = c['bg'] },
        ["ModeMsg"]        = { fg = 'NONE', bg = c['bg'] },
        ["MsgSeparator"]   = { fg = 'NONE', bg = c['bg'] },

        -- Pop-up menu
        ["Pmenu"]      = { fg = c['fg'], bg = c['bg'] },
        ["PmenuSel"]   = { fg = c['fg'], bg = c['mg'] },
        ["PmenuSbar"]  = { fg = 'NONE', bg = c['bg'] },
        ["PmenuThumb"] = { fg = 'NONE', bg = c['bg'] },

        ["TabLine"]     = { fg = c['mg'], bg = c['bg'] },
        ["TabLineSel"]  = { fg = c['bg'], bg = c['fg'] },
        ["TabLineFill"] = { fg = c['fg'], bg = c['bg'] },

        ["StatusLine"]       = { fg = c['fg'], bg = c['bg'] },
        ["StatusLineNC"]     = { fg = c['fg'], bg = c['bg'] },
        ["StatusLineTerm"]   = { fg = c['fg'], bg = c['bg'] },
        ["StatusLineTermNC"] = { fg = c['fg'], bg = c['bg'] },

        ["WinBar"]   = { fg = c['bg'], bg = c['fg'] },
        ["WinBarNC"] = { fg = c['bg'], bg = c['fg'] },

        ["WildMenu"]       = { fg = 'NONE', bg = c['cyn'] },
        ["Folded"]         = { fg = c['fg'], bg = c['bg'] },
        ["FoldColumn"]     = { fg = c['fg'], bg = c['bg'] },
        ["LineNr"]         = { fg = c['fg'], bg = 'NONE' },
        ["LineNrAbove"]    = { fg = c['mg'], bg = 'NONE' },
        ["LineNrBelow"]    = { fg = c['mg'], bg = 'NONE' },
        ["FloatBorder"]    = { fg = c['fg'], bg = c['bg'] },
        ["Whitespace"]     = { fg = c['mg'], bg = 'NONE' },
        ["WinSeparator"]   = { fg = c['bg'], bg = c['bg'] },
        ["WinSeparatorNC"] = { fg = c['bg'], bg = c['bg'] },
        ["NormalFloat"]    = { fg = c['fg'], bg = c['bg'] },
        ["WarningMsg"]     = { fg = c['ylw'], bg = c['bg'] },
        ["QuickFixLine"]   = { fg = 'NONE', bg = c['blu'] },

        -- The MatchWord groups don't actually exist, but we define them here
        -- to link to them in plugin specific files instead of redefining the
        -- same group multiple times
        ["MatchWord"]      = { fg = 'bg', bg = c['mag'] },
        ["MatchParen"]     = { fg = 'bg', bg = c['mg'] },
        ["MatchWordCur"]   = { fg = 'bg', bg = c['mag'] },
        ["MatchParenCur"]  = { fg = 'bg', bg = c['mag'] },

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
        ["CursorLine"]   = { fg = 'NONE',  bg = 'NONE' },
        ["CursorLineNr"] = { fg = c['fg'], bg = 'NONE' },
        ["CursorColumn"] = { fg = 'NONE',  bg = 'NONE' },
        ["ColorColumn"]  = { fg = 'NONE',  bg = c['bg'] },
        ["CursorIM"]     = { fg = c['fg'], bg = c['bg'] },
        ["TermCursor"]   = { fg = c['fg'], bg = c['bg'] },
        ["TermCursorNC"] = { fg = c['fg'], bg = c['bg'] },
        ["Visual"]       = { fg = c['bg'], bg = c['fg'] },
        ["VisualNOS"]    = { fg = c['bg'], bg = c['fg'] },
    }
end

return M
