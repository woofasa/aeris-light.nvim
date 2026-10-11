-- Palette. Color roles:
--   fg_muted  — comments, secondary text (≈4.8:1 to bg_active, ≈6.5:1 to bg)
--   fg_subtle — secondary text, separators, inlay hints (≈4.2:1 to bg)
--   fg_ghost  — decoration ONLY: whitespace, nontext, indent markers.
--               Do not use for readable text (≈1.4:1).
-- Backgrounds: floats — bg_overlay, side panels — bg_subtle, selection — bg_active.
-- Accent hues match the dark Aeris palette; lightness is lowered so the
-- accents stay readable as text on a light background.
local aeris = {
  -- Backgrounds — from lightest to darkest
  bg         = "#fbf9f4",
  bg_subtle  = "#f3f0e8",
  bg_raised  = "#efece4",
  bg_overlay = "#ffffff",
  bg_border  = "#e2dfd6",
  bg_active  = "#dcd8cc",

  fg         = "#1c1c1c",
  fg_muted   = "#5f5a50",
  fg_subtle  = "#7d786c",
  fg_ghost   = "#d4d0c4",

  -- Accents
  pink       = "#A3365F", -- keywords
  red        = "#B5333C", -- errors
  aqua       = "#0B7268", -- functions, directories, headings
  blue       = "#2F5E9A", -- preprocessor, attributes, info
  green      = "#2D7D3A", -- types, diff additions
  peach      = "#8A6410", -- strings, numbers, constants
  orange     = "#A4541A", -- warnings, todo
}

return aeris
