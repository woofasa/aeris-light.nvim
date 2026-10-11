-- lualine theme: require("lualine").setup({ options = { theme = "aeris-light" } })
local p = require("aeris_light.palette")

local function mode(a_bg)
  return {
    a = { fg = p.bg, bg = a_bg },
    b = { fg = p.fg, bg = p.bg_active },
    c = { fg = p.fg_muted, bg = p.bg_subtle },
  }
end

return {
  normal = mode(p.aqua),
  insert = mode(p.pink),
  visual = mode(p.peach),
  replace = mode(p.red),
  command = mode(p.green),
  terminal = mode(p.blue),
  inactive = {
    a = { fg = p.fg_subtle, bg = p.bg_subtle },
    b = { fg = p.fg_subtle, bg = p.bg_subtle },
    c = { fg = p.fg_subtle, bg = p.bg_subtle },
  },
}
