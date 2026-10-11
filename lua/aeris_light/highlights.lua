local M = {}

-- List of group modules. Order does not matter: duplicates are an error (see M.set).
local modules = {
  "aeris_light.groups.editor",
  "aeris_light.groups.syntax",
  "aeris_light.groups.treesitter",
  "aeris_light.groups.lsp",
  "aeris_light.groups.snacks",
  "aeris_light.groups.neotree",
  "aeris_light.groups.plugins",
}

-- Groups whose background becomes transparent when transparent = true.
local transparent_groups = {
  "Normal",
  "NormalNC",
  "SignColumn",
  "EndOfBuffer",
  "FoldColumn",
  "TabLineFill",
  "NeoTreeNormal",
  "NeoTreeNormalNC",
  "NeoTreeEndOfBuffer",
}

---@param aeris table palette
---@param config table {transparent: boolean, overrides: table<string, table>}
function M.set(aeris, config)
  local groups = {}

  for _, name in ipairs(modules) do
    for group, spec in pairs(require(name).load(aeris)) do
      if groups[group] then
        error(("aeris-light: highlight group '%s' defined twice (last in %s)"):format(group, name))
      end
      groups[group] = spec
    end
  end

  for group, spec in pairs(config.overrides) do
    groups[group] = vim.tbl_extend("force", groups[group] or {}, spec)
  end

  if config.transparent then
    for _, group in ipairs(transparent_groups) do
      if groups[group] then
        groups[group].bg = "NONE"
      end
    end
  end

  for group, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  require("aeris_light.groups.terminal").load(aeris)
end

return M
