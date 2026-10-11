local terminal = {}

-- Normal (0–7) and bright (8–15) ANSI slots.
-- The palette has no separate bright shades, so bright 9–14 match the normal ones;
-- only black (8) and white (15) differ.
-- The Terminal group (:terminal background/text) is defined in editor.lua.
terminal.load = function(aeris)
  vim.g.terminal_color_0  = aeris.bg_subtle  -- black
  vim.g.terminal_color_1  = aeris.red        -- red
  vim.g.terminal_color_2  = aeris.green      -- green
  vim.g.terminal_color_3  = aeris.peach      -- yellow
  vim.g.terminal_color_4  = aeris.blue       -- blue
  vim.g.terminal_color_5  = aeris.pink       -- magenta
  vim.g.terminal_color_6  = aeris.aqua       -- cyan
  vim.g.terminal_color_7  = aeris.fg_muted   -- white (muted)
  vim.g.terminal_color_8  = aeris.fg_subtle  -- bright black
  vim.g.terminal_color_9  = aeris.red        -- bright red
  vim.g.terminal_color_10 = aeris.green      -- bright green
  vim.g.terminal_color_11 = aeris.peach      -- bright yellow
  vim.g.terminal_color_12 = aeris.blue       -- bright blue
  vim.g.terminal_color_13 = aeris.pink       -- bright magenta
  vim.g.terminal_color_14 = aeris.aqua       -- bright cyan
  vim.g.terminal_color_15 = aeris.fg         -- bright white
end

return terminal
