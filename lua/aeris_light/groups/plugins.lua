local plugins = {}

-- Group names verified against the source of the installed plugins.
plugins.load = function(aeris)
  return {
    -- gitsigns
    GitSignsAdd             = { fg = aeris.green },
    GitSignsChange          = { fg = aeris.peach },
    GitSignsDelete          = { fg = aeris.red },
    GitSignsTopdelete       = { fg = aeris.red },
    GitSignsChangedelete    = { fg = aeris.orange },
    GitSignsUntracked       = { fg = aeris.fg_muted },
    GitSignsCurrentLineBlame = { fg = aeris.fg_subtle },

    -- blink.cmp
    BlinkCmpMenu                        = { fg = aeris.fg, bg = aeris.bg_overlay },
    BlinkCmpMenuBorder                  = { fg = aeris.fg_subtle, bg = aeris.bg_overlay },
    BlinkCmpMenuSelection               = { bg = aeris.bg_active },
    BlinkCmpLabel                       = { fg = aeris.fg },
    BlinkCmpLabelMatch                  = { fg = aeris.aqua },
    BlinkCmpLabelDeprecated             = { fg = aeris.fg_muted, strikethrough = true },
    BlinkCmpLabelDetail                 = { fg = aeris.fg_muted },
    BlinkCmpLabelDescription            = { fg = aeris.fg_muted },
    BlinkCmpKind                        = { fg = aeris.pink },
    BlinkCmpSource                      = { fg = aeris.fg_muted },
    BlinkCmpGhostText                   = { fg = aeris.fg_subtle },
    BlinkCmpDoc                         = { fg = aeris.fg, bg = aeris.bg_overlay },
    BlinkCmpDocBorder                   = { fg = aeris.fg_subtle, bg = aeris.bg_overlay },
    BlinkCmpDocSeparator                = { fg = aeris.fg_subtle, bg = aeris.bg_overlay },
    BlinkCmpSignatureHelp               = { fg = aeris.fg, bg = aeris.bg_overlay },
    BlinkCmpSignatureHelpBorder         = { fg = aeris.fg_subtle, bg = aeris.bg_overlay },
    BlinkCmpSignatureHelpActiveParameter = { fg = aeris.aqua },
    BlinkCmpScrollBarGutter             = { bg = aeris.bg_overlay },
    BlinkCmpScrollBarThumb              = { bg = aeris.fg_subtle },

    -- which-key
    WhichKey        = { fg = aeris.aqua },
    WhichKeyGroup   = { fg = aeris.pink },
    WhichKeyDesc    = { fg = aeris.fg },
    WhichKeySeparator = { fg = aeris.fg_muted },
    WhichKeyValue   = { fg = aeris.fg_muted },
    WhichKeyNormal  = { fg = aeris.fg, bg = aeris.bg_overlay },
    WhichKeyBorder  = { fg = aeris.fg_subtle, bg = aeris.bg_overlay },
    WhichKeyTitle   = { fg = aeris.aqua, bg = aeris.bg_overlay },

    -- flash.nvim
    FlashLabel      = { fg = aeris.bg, bg = aeris.orange },
    FlashCurrent    = { fg = aeris.bg, bg = aeris.pink },
    FlashMatch      = { fg = aeris.aqua, bg = aeris.bg_active },
    FlashBackdrop   = { fg = aeris.fg_subtle },
    FlashPromptIcon = { fg = aeris.pink },
  }
end

return plugins
