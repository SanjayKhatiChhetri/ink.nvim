# ink.nvim

A dark Neovim colorscheme with a blue-grey ink background and soft pastel accents.
Written in Lua, no dependencies, Neovim >= 0.10.

- Treesitter and LSP semantic token highlights
- Diagnostics, diffs, `:terminal` colours
- Plugin groups: gitsigns, fzf-lua, blink.cmp, which-key, nvim-dap, lazy.nvim, mason
- Matching lualine theme

## Palette

| Role | Hex | Role | Hex |
|---|---|---|---|
| background | `#111720` | foreground | `#cdd6e4` |
| selection | `#27303a` | comment | `#5d6f8c` |
| red | `#e58c9a` | green | `#89c5aa` |
| yellow | `#d9be82` | blue | `#91b6ee` |
| purple | `#b9a0e2` | cyan | `#56b6c2` |

The full palette (including brights and derived surface shades) is in
[`lua/ink/palette.lua`](lua/ink/palette.lua).

## Install

lazy.nvim:

```lua
{
  "<github-user>/ink.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("ink").setup(opts)
    vim.cmd.colorscheme("ink")
  end,
}
```

Without a plugin manager's `opts`, just `vim.cmd.colorscheme("ink")` works with defaults.

## Options

```lua
require("ink").setup({
  transparent = false,       -- keep the terminal background
  italic_comments = true,
  palette = {},              -- override any colour, e.g. { bg = "#0f141c" }
  on_highlights = function(hl, p)
    hl.CursorLineNr = { fg = p.orange, bold = true }
  end,
})
```

## lualine

```lua
require("lualine").setup({ options = { theme = "ink" } })
```

## License

MIT
