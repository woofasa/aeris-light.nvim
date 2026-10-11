# aeris-light.nvim

A light colorscheme for Neovim: the pastel pink and cyan accents of
[aeris.nvim](https://github.com/woofasa/aeris-nvim), darkened for readable
text on a warm off-white background.

## Installation (lazy.nvim)

```lua
{
  "woofasa/aeris-light-nvim",
  name = "aeris-light",
  priority = 1000,
  opts = {
    transparent = true,
    overrides = {},
  },
}
```

Then:

```vim
:colorscheme aeris-light
```

## Options

`require("aeris_light").setup(opts)` is called before `:colorscheme aeris-light`
(lazy.nvim does this automatically via `opts`).

| Option        | Type                      | Default      | Description |
|---------------|---------------------------|--------------|-------------|
| `transparent` | `boolean`                 | `true`       | Removes the background from `Normal`, `NormalNC`, `SignColumn`, `EndOfBuffer`, `FoldColumn`, `TabLineFill` and neo-tree panels. |
| `overrides`   | `table<string, table>`    | `{}`         | Overrides for groups on top of the scheme, arguments are the same as for `nvim_set_hl`. Example: `{ Comment = { italic = true } }`. |

## Plugins

Highlighting is available for: treesitter, LSP (diagnostics, inlay hints, references),
snacks.nvim, neo-tree, gitsigns, blink.cmp, which-key, flash.nvim.

lualine theme:

```lua
require("lualine").setup({ options = { theme = "aeris-light" } })
```

bufferline has no groups of its own: it computes its colors from the scheme's standard groups.

## Terminal

`g:terminal_color_0..15` are set from the palette. The palette has no separate
bright shades: slots 9–14 match the normal ones, only 8 and 15 differ.

## Palette

Colors are defined in `lua/aeris_light/palette.lua`. Roles:

- `fg_muted` — comments and secondary text (≈4.8:1 against `bg_active`, ≈6.5:1 against `bg`);
- `fg_subtle` — secondary text, separators, inlay hints (≈4.2:1);
- `fg_ghost` — decoration only (whitespace, nontext, indent). Do not use for text.

Accent hues match the dark variant; only lightness changed, so that every
accent stays at or above 4.5:1 against the background.

## Development

Checks without UI:

```sh
nvim --headless -u NONE -l tests/check.lua
```

The script checks loading, the terminal palette, contrast of key groups,
an error on duplicate groups, `setup()` validation, `transparent` and `overrides`.

## License

See [LICENSE.txt](LICENSE.txt).
