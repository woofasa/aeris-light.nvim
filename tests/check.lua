-- Theme checks without UI.
-- Run from the repository root:
--   nvim --headless -u NONE -l tests/check.lua

local root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h:h")
vim.opt.rtp:prepend(root)

local failures = 0
local function check(cond, msg)
  if cond then
    print("ok   " .. msg)
  else
    failures = failures + 1
    print("FAIL " .. msg)
  end
end

local function hex(n)
  return n and ("#%06x"):format(n) or nil
end

local function luminance(h)
  local function ch(c)
    c = c / 255
    return c <= 0.04045 and c / 12.92 or ((c + 0.055) / 1.055) ^ 2.4
  end
  local r, g, b = tonumber(h:sub(2, 3), 16), tonumber(h:sub(4, 5), 16), tonumber(h:sub(6, 7), 16)
  return 0.2126 * ch(r) + 0.7152 * ch(g) + 0.0722 * ch(b)
end

local function contrast(a, b)
  local la, lb = luminance(a), luminance(b)
  if la < lb then la, lb = lb, la end
  return (la + 0.05) / (lb + 0.05)
end

local function get(name)
  return vim.api.nvim_get_hl(0, { name = name, link = false })
end

local aeris = require("aeris_light")
local palette = require("aeris_light.palette")

-- 1. Basic load without setup()
aeris.load()
check(vim.g.colors_name == "aeris-light", "colors_name установлен")
check(vim.o.termguicolors == true, "termguicolors включён")

-- 2. Terminal palette
local expected_term = {
  [0] = palette.bg_subtle, [1] = palette.red, [2] = palette.green, [3] = palette.peach,
  [4] = palette.blue, [5] = palette.pink, [6] = palette.aqua, [7] = palette.fg_muted,
  [8] = palette.fg_subtle, [9] = palette.red, [10] = palette.green, [11] = palette.peach,
  [12] = palette.blue, [13] = palette.pink, [14] = palette.aqua, [15] = palette.fg,
}
local term_ok = true
for i = 0, 15 do
  if vim.g["terminal_color_" .. i] ~= expected_term[i] then
    term_ok = false
    print(("     slot %d: got %s, want %s"):format(i, tostring(vim.g["terminal_color_" .. i]), expected_term[i]))
  end
end
check(term_ok, "terminal_color_0..15 соответствуют палитре")
check(get("Terminal").fg ~= nil, "группа Terminal задана")

-- 3. Contrast of text groups against the Normal background
local bg = palette.bg
local min_contrast = {
  Comment = 4.5, LineNr = 4.5,
  Conceal = 3, Ignore = 3, NeoTreeDimText = 3, NeoTreeGitIgnored = 3,
  LspInlayHint = 3, FloatBorder = 3, WinSeparator = 3, VertSplit = 3,
  GitSignsCurrentLineBlame = 3, FlashBackdrop = 3,
}
for group, min in pairs(min_contrast) do
  local fg = hex(get(group).fg)
  if fg then
    local r = contrast(fg, bg)
    check(r >= min, ("%s: контраст %.2f >= %.1f"):format(group, r, min))
  end
end
do
  -- Comment on the Visual selection: same check, but against the Visual background
  local r = contrast(palette.fg_muted, palette.bg_active)
  check(r >= 3, ("Comment на Visual: контраст %.2f >= 3"):format(r))
end

-- 4. Duplicate groups are detected
do
  local hl = require("aeris_light.highlights")
  package.loaded["aeris_light.groups.plugins"] = { load = function() return { Normal = {} } end }
  local ok, err = pcall(hl.set, palette, { transparent = false, overrides = {} })
  package.loaded["aeris_light.groups.plugins"] = nil
  check(not ok and tostring(err):find("defined twice", 1, true) ~= nil, "дубль группы вызывает ошибку")
end

-- 5. setup() validation
check(not pcall(aeris.setup, { transparent = "yes" }), "transparent не-boolean отвергается")
check(not pcall(aeris.setup, { overrides = "x" }), "overrides не-таблица отвергается")

-- 6. transparent
aeris.setup({ transparent = true })
aeris.load()
check(get("Normal").bg == nil, "transparent: Normal без фона")
check(get("NeoTreeNormal").bg == nil, "transparent: NeoTreeNormal без фона")
check(get("Comment").fg ~= nil, "transparent: Comment сохраняет fg")
aeris.setup({})

-- 7. overrides
aeris.setup({ overrides = { Comment = { italic = true } } })
aeris.load()
check(get("Comment").italic == true, "overrides: Comment italic")
check(hex(get("Comment").fg) == palette.fg_muted, "overrides: fg Comment не потерян")
aeris.setup({})
aeris.load()
check(get("Comment").italic ~= true, "после сброса overrides italic снят")

print(failures == 0 and "\nВсе проверки пройдены" or ("\nПровалено: " .. failures))
os.exit(failures == 0 and 0 or 1)
