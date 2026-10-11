local editor = {}

editor.load = function(aeris)
  return {
    -- Main text and background
    Normal        = { fg = aeris.fg, bg = aeris.bg },
    NormalNC      = { fg = aeris.fg, bg = aeris.bg_subtle },
    NormalFloat   = { fg = aeris.fg, bg = aeris.bg_overlay },
    FloatBorder   = { fg = aeris.fg_subtle, bg = aeris.bg_overlay },
    FloatTitle    = { fg = aeris.aqua, bg = aeris.bg_overlay },
    FloatShadow   = { bg = aeris.bg, blend = 80 },
    FloatShadowThrough = { bg = aeris.bg, blend = 100 },
    Terminal      = { fg = aeris.fg, bg = aeris.bg },

    -- Cursor and selection
    Cursor        = { fg = aeris.bg, bg = aeris.fg },
    CursorIM      = { fg = aeris.bg, bg = aeris.fg },
    CursorLine    = { bg = aeris.bg_raised },
    CursorColumn  = { bg = aeris.bg_raised },
    CursorLineNr  = { fg = aeris.peach },
    CursorLineSign = { bg = aeris.bg_raised },
    CursorLineFold = { bg = aeris.bg_raised },
    Visual        = { bg = aeris.bg_active },
    VisualNOS     = { bg = aeris.bg_active },

    -- Line and column numbers
    LineNr        = { fg = aeris.fg_muted },
    SignColumn    = { fg = aeris.fg_subtle, bg = aeris.bg },
    FoldColumn    = { fg = aeris.fg_subtle, bg = aeris.bg },
    ColorColumn   = { bg = aeris.bg_raised },

    -- Separators
    VertSplit     = { fg = aeris.fg_subtle },
    WinSeparator  = { fg = aeris.fg_subtle },
    EndOfBuffer   = { fg = aeris.bg },
    -- Decorative characters: low contrast is acceptable
    NonText       = { fg = aeris.fg_ghost },
    SpecialKey    = { fg = aeris.fg_ghost },
    Whitespace    = { fg = aeris.fg_ghost },

    -- Search
    Search        = { fg = aeris.bg, bg = aeris.aqua },
    IncSearch     = { fg = aeris.bg, bg = aeris.pink },
    CurSearch     = { fg = aeris.bg, bg = aeris.aqua },
    Substitute    = { fg = aeris.bg, bg = aeris.peach },

    -- Completion popup menu
    Pmenu         = { fg = aeris.fg, bg = aeris.bg_overlay },
    PmenuSel      = { fg = aeris.bg, bg = aeris.aqua },
    PmenuSbar     = { bg = aeris.bg_overlay },
    PmenuThumb    = { bg = aeris.fg_subtle },

    -- Status line, tabs, winbar
    StatusLine    = { fg = aeris.fg, bg = aeris.bg_subtle },
    StatusLineNC  = { fg = aeris.fg_muted, bg = aeris.bg_subtle },
    TabLine       = { fg = aeris.fg_muted, bg = aeris.bg_subtle },
    TabLineSel    = { fg = aeris.bg, bg = aeris.aqua },
    TabLineFill   = { bg = aeris.bg },
    WinBar        = { fg = aeris.fg, bg = aeris.bg },
    WinBarNC      = { fg = aeris.fg_muted, bg = aeris.bg },

    -- Folding
    Folded        = { fg = aeris.fg_muted, bg = aeris.bg_raised },

    -- Messages
    ErrorMsg      = { fg = aeris.red },
    WarningMsg    = { fg = aeris.orange },
    MoreMsg       = { fg = aeris.aqua },
    ModeMsg       = { fg = aeris.fg_muted },
    MsgArea       = { fg = aeris.fg, bg = aeris.bg },
    Question      = { fg = aeris.aqua },
    Title         = { fg = aeris.aqua },
    WildMenu      = { fg = aeris.bg, bg = aeris.aqua },

    -- Diff
    DiffAdd       = { fg = aeris.green, bg = aeris.bg_raised },
    DiffChange    = { fg = aeris.peach, bg = aeris.bg_raised },
    DiffDelete    = { fg = aeris.red, bg = aeris.bg_raised },
    DiffText      = { fg = aeris.peach, bg = aeris.bg_raised },

    -- Miscellaneous
    MatchParen    = { fg = aeris.fg },
    Directory     = { fg = aeris.aqua },
    QuickFixLine  = { bg = aeris.bg_overlay },
    Conceal       = { fg = aeris.fg_subtle },

    -- Spell
    SpellBad      = { sp = aeris.red, undercurl = true },
    SpellCap      = { sp = aeris.peach, undercurl = true },
    SpellLocal    = { sp = aeris.aqua, undercurl = true },
    SpellRare     = { sp = aeris.green, undercurl = true },

    -- Health
    healthError   = { fg = aeris.red },
    healthSuccess = { fg = aeris.green },
    healthWarning = { fg = aeris.orange },
  }
end

return editor
