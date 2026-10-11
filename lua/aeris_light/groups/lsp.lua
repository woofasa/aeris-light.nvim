local lsp = {}

lsp.load = function(aeris)
  return {
    LspInlayHint               = { fg = aeris.fg_subtle, bg = aeris.bg_raised },
    LspCodeLens                = { fg = aeris.fg_subtle },
    LspReferenceText           = { bg = aeris.bg_active },
    LspReferenceRead           = { bg = aeris.bg_active },
    LspReferenceWrite          = { bg = aeris.bg_active, underline = true },
    LspSignatureActiveParameter = { bg = aeris.bg_active },

    DiagnosticVirtualTextError = { fg = aeris.red, bg = aeris.bg_raised },
    DiagnosticVirtualTextWarn  = { fg = aeris.orange, bg = aeris.bg_raised },
    DiagnosticVirtualTextInfo  = { fg = aeris.blue, bg = aeris.bg_raised },
    DiagnosticVirtualTextHint  = { fg = aeris.fg_muted, bg = aeris.bg_raised },

    DiagnosticError            = { fg = aeris.red },
    DiagnosticWarn             = { fg = aeris.orange },
    DiagnosticInfo             = { fg = aeris.blue },
    DiagnosticHint             = { fg = aeris.fg_muted },

    DiagnosticSignError        = { fg = aeris.red },
    DiagnosticSignWarn         = { fg = aeris.orange },
    DiagnosticSignInfo         = { fg = aeris.blue },
    DiagnosticSignHint         = { fg = aeris.fg_muted },

    DiagnosticUnderlineError   = { undercurl = true, sp = aeris.red },
    DiagnosticUnderlineWarn    = { undercurl = true, sp = aeris.orange },
    DiagnosticUnderlineInfo    = { undercurl = true, sp = aeris.blue },
    DiagnosticUnderlineHint    = { undercurl = true, sp = aeris.fg_muted },

    DiagnosticDeprecated       = { strikethrough = true, fg = aeris.fg_muted },
    DiagnosticUnnecessary      = { fg = aeris.fg_subtle },
  }
end

return lsp
