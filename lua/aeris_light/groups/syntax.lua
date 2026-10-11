local syntax = {}

syntax.load = function(aeris)
  return {
    Comment        = { fg = aeris.fg_muted },
    SpecialComment = { fg = aeris.blue },
    Todo           = { fg = aeris.orange },

    -- Keywords: pink. Preprocessor/imports: blue, so they don't blend together.
    Keyword        = { fg = aeris.pink },
    Conditional    = { fg = aeris.pink },
    Repeat         = { fg = aeris.pink },
    Label          = { fg = aeris.pink },
    Exception      = { fg = aeris.pink },
    Statement      = { fg = aeris.pink },
    StorageClass   = { fg = aeris.pink },
    Include        = { fg = aeris.blue },
    PreProc        = { fg = aeris.blue },
    Define         = { fg = aeris.blue },
    Macro          = { fg = aeris.blue },
    PreCondit      = { fg = aeris.blue },

    Function       = { fg = aeris.aqua },

    Type           = { fg = aeris.green },
    Structure      = { fg = aeris.green },
    Typedef        = { fg = aeris.green },

    Identifier     = { fg = aeris.fg },

    -- Literals: peach. Warnings use the separate orange.
    String         = { fg = aeris.peach },
    Character      = { fg = aeris.peach },
    Number         = { fg = aeris.peach },
    Float          = { fg = aeris.peach },
    Boolean        = { fg = aeris.peach },
    Constant       = { fg = aeris.peach },

    Operator       = { fg = aeris.fg },
    Delimiter      = { fg = aeris.fg },

    Special        = { fg = aeris.green },
    SpecialChar    = { fg = aeris.peach },
    Tag            = { fg = aeris.aqua },
    Debug          = { fg = aeris.red },
    Error          = { fg = aeris.red },
    Underlined     = { underline = true },
    Ignore         = { fg = aeris.fg_subtle },
  }
end

return syntax
