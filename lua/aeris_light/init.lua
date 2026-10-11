local M = {}

local defaults = {
  -- Transparent background for Normal and side panels (the terminal background shows through).
  transparent = true,
  -- Group overrides applied on top of the theme: { Comment = { italic = true }, ... }.
  overrides = {},
}

local config = vim.deepcopy(defaults)

---@param opts? table see `defaults`
function M.setup(opts)
  config = vim.tbl_deep_extend("force", vim.deepcopy(defaults), opts or {})
  assert(type(config.transparent) == "boolean", "aeris-light: transparent must be a boolean")
  assert(type(config.overrides) == "table", "aeris-light: overrides must be a table")
end

function M.load()
  vim.o.background = "light"
  vim.o.termguicolors = true
  vim.cmd("highlight clear")
  -- :highlight clear removes g:colors_name, so set it after the clear.
  vim.g.colors_name = "aeris-light"

  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  local palette = require("aeris_light.palette")
  require("aeris_light.highlights").set(palette, config)
end

return M
