local neotree = {}

neotree.load = function(aeris)
  return {
    NeoTreeNormal         = { fg = aeris.fg, bg = aeris.bg_subtle },
    NeoTreeNormalNC       = { fg = aeris.fg, bg = aeris.bg_subtle },
    NeoTreeDimText        = { fg = aeris.fg_subtle },
    NeoTreeRootName       = { fg = aeris.aqua },
    NeoTreeFileName       = { fg = aeris.fg },
    NeoTreeFileNameOpened = { fg = aeris.pink },
    NeoTreeDirectoryName  = { fg = aeris.aqua },
    NeoTreeDirectoryIcon  = { fg = aeris.aqua },
    NeoTreeFileIcon       = { fg = aeris.fg_muted },
    NeoTreeIndentMarker   = { fg = aeris.fg_ghost },
    NeoTreeExpander       = { fg = aeris.fg_muted },
    NeoTreeGitAdded       = { fg = aeris.green },
    NeoTreeGitModified    = { fg = aeris.peach },
    NeoTreeGitDeleted     = { fg = aeris.red },
    NeoTreeGitUntracked   = { fg = aeris.fg_muted },
    NeoTreeGitIgnored     = { fg = aeris.fg_subtle },
    NeoTreeGitConflict    = { fg = aeris.red },
    NeoTreeWinSeparator   = { fg = aeris.fg_subtle, bg = aeris.bg_subtle },
    NeoTreeEndOfBuffer    = { fg = aeris.bg_subtle },
    NeoTreeCursorLine     = { bg = aeris.bg_raised },
    NeoTreeFloatBorder    = { fg = aeris.aqua },
    NeoTreeFloatTitle     = { fg = aeris.aqua },
  }
end

return neotree
