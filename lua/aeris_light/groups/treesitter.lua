local treesitter = {}

treesitter.load = function(aeris)
  return {
    -- Comments
    ["@comment"]               = { fg = aeris.fg_muted },

    -- Keywords (subgroups @keyword.conditional/repeat/exception
    -- inherit from @keyword via Neovim's fallback)
    ["@keyword"]               = { fg = aeris.pink },
    ["@keyword.function"]      = { fg = aeris.pink },
    ["@keyword.return"]        = { fg = aeris.pink },
    ["@keyword.operator"]      = { fg = aeris.pink },
    ["@keyword.import"]        = { fg = aeris.blue },
    ["@keyword.type"]          = { fg = aeris.pink },
    ["@keyword.modifier"]      = { fg = aeris.pink },

    -- Functions
    ["@function"]              = { fg = aeris.aqua },
    ["@function.builtin"]      = { fg = aeris.aqua },
    ["@function.macro"]        = { fg = aeris.aqua },
    ["@function.call"]         = { fg = aeris.aqua },
    ["@function.method"]       = { fg = aeris.aqua },
    ["@function.method.call"]  = { fg = aeris.aqua },
    ["@constructor"]           = { fg = aeris.aqua },

    -- Types
    ["@type"]                  = { fg = aeris.green },
    ["@type.builtin"]          = { fg = aeris.green },

    -- Variables and properties
    ["@variable"]              = { fg = aeris.fg },
    ["@variable.builtin"]      = { fg = aeris.pink },
    ["@variable.parameter"]    = { fg = aeris.fg },
    ["@variable.member"]       = { fg = aeris.fg },
    ["@property"]              = { fg = aeris.fg },
    ["@attribute"]             = { fg = aeris.blue },

    -- Literals
    ["@string"]                = { fg = aeris.peach },
    ["@string.escape"]         = { fg = aeris.peach },
    ["@string.special"]        = { fg = aeris.peach },
    ["@number"]                = { fg = aeris.peach },
    ["@number.float"]          = { fg = aeris.peach },
    ["@boolean"]               = { fg = aeris.peach },

    -- Operators and punctuation
    ["@operator"]              = { fg = aeris.fg },
    ["@punctuation.bracket"]   = { fg = aeris.fg },
    ["@punctuation.delimiter"] = { fg = aeris.fg },
    ["@punctuation.special"]   = { fg = aeris.fg },

    -- Miscellaneous
    ["@constant"]              = { fg = aeris.peach },
    ["@constant.builtin"]      = { fg = aeris.peach },
    ["@namespace"]             = { fg = aeris.peach },
    ["@module"]                = { fg = aeris.peach },
    ["@label"]                 = { fg = aeris.pink },
    ["@tag"]                   = { fg = aeris.pink },
    ["@tag.attribute"]         = { fg = aeris.blue },
    ["@tag.delimiter"]         = { fg = aeris.fg_subtle },

    -- Markup (markdown, etc.)
    ["@markup.heading"]        = { fg = aeris.aqua },
    ["@markup.strikethrough"]  = { strikethrough = true },
    ["@markup.underline"]      = { underline = true },
    ["@markup.link"]           = { fg = aeris.aqua },
    ["@markup.link.url"]       = { fg = aeris.blue, underline = true },
    ["@markup.raw"]            = { fg = aeris.peach },
    ["@markup.quote"]          = { fg = aeris.fg_muted },
    ["@markup.list"]           = { fg = aeris.pink },
    ["@markup.list.checked"]   = { fg = aeris.green },
    ["@markup.list.unchecked"] = { fg = aeris.fg_muted },

    -- Diff (git highlighting in treesitter)
    ["@diff.plus"]             = { fg = aeris.green },
    ["@diff.minus"]            = { fg = aeris.red },
    ["@diff.delta"]            = { fg = aeris.peach },
  }
end

return treesitter
