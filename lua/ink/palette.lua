-- Ink palette.
-- The 22 base colours come from the Windows Terminal "Ink" scheme.
-- Entries marked (derived) are not in that scheme; they are extra shades
-- needed for UI surfaces and were chosen to sit on the same blue-grey axis.
return {
  -- surfaces
  bg = "#111720",
  bg_dark = "#0d1219", -- (derived) statusline, sidebars
  bg_float = "#161d28", -- (derived) floating windows, popup menu
  bg_highlight = "#1a212b", -- (derived) cursorline
  bg_visual = "#27303a", -- selectionBackground
  black = "#1f252d",
  border = "#2b3646", -- (derived)

  -- text
  fg = "#cdd6e4",
  fg_dark = "#9aa7bb", -- (derived) delimiters, secondary text
  comment = "#5d6f8c", -- (derived) a touch lighter than brightBlack for legibility
  dim = "#495a74", -- brightBlack: line numbers, listchars, ignored text

  -- accents
  red = "#e58c9a",
  green = "#89c5aa",
  yellow = "#d9be82",
  blue = "#91b6ee",
  purple = "#b9a0e2",
  cyan = "#56b6c2",
  orange = "#dfa68a", -- (derived) numbers, constants

  -- bright accents
  bright_red = "#f0a1ad",
  bright_green = "#9bd4b8",
  bright_yellow = "#eed7a8",
  bright_blue = "#a5c5f5",
  bright_purple = "#c9b3eb",
  bright_cyan = "#83d0d5",
  white = "#ffffff",

  -- tinted backgrounds for diffs / diagnostics (derived)
  diff_add = "#17302a",
  diff_change = "#1d2a40",
  diff_delete = "#341e28",
  search = "#2f4565",
}
